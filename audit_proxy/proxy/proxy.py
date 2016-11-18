#!/usr/bin/env python
# -*- coding: utf-8 -*-
# -------------------------------------------------------------------------------
# Name:        Proxy.py
# Purpose:     Linux Shell Security Audit, Record all operating commands
#
# Author:      0x001
#
# Created:     2013-01-14
# Change:      2013-05-29
# Site:        http://www.0x001.com
# -------------------------------------------------------------------------------

# import binascii
import array
import fcntl
import os
import pty
import select
import signal
import sys
import termios
import tty
import time, datetime
import re

# START_ALTERNATE_MODE = set('\x1b[?{0}h'.format(i) for i in ('1049', '47', '1047'))
START_ALTERNATE_MODE = set(['\x1b[?47h', '\x1b[?1049h', '\x1b[?1047h'])
# END_ALTERNATE_MODE = set('\x1b[?{0}l'.format(i) for i in ('1049', '47', '1047'))
END_ALTERNATE_MODE = set(['\x1b[?47l', '\x1b[?1049l', '\x1b[?1047l'])
ALTERNATE_MODE_FLAGS = tuple(START_ALTERNATE_MODE) + tuple(END_ALTERNATE_MODE)

HISTORY_COMMAND_MODE_FLAGS = set(['\x1b\x5b\x41', '\x1b\x5b\x42', '\x1b\x5b\x35\x7e', '\x1b\x5b\x36\x7e'])

LOG_FILE = ''
SUDO_UID = 0
SUDO_GID = 0
G_USER = ''
G_HOME = ''
G_TTY = ''
G_PID = 0
G_PPID = 0

''' checked unique process (Singleton Mode) '''


class ApplicationInstance:
    def __init__(self, pid_file):
        self.pid_file = pid_file
        self.check()
        self.startApplication()

    def check(self):
        if not os.path.isfile(self.pid_file):
            return
        pid = 0
        try:
            file = open(self.pid_file, 'rt')
            data = file.read()
            file.close()
            pid = int(data)
        except:
            pass
        if 0 == pid:
            return
        try:
            os.kill(pid, 0)
        except:
            return
        # print "The application is already running !"
        sys.exit(2)

    def startApplication(self):
        file = open(self.pid_file, 'wt')
        file.write(str(os.getpid()))
        file.close()

    def exitApplication(self):
        try:
            os.remove(self.pid_file)
        except:
            pass


def findlast(s, substrs):
    i = -1
    result = None
    for substr in substrs:
        pos = s.rfind(substr)
        if pos > i:
            i = pos
            result = substr
    return result


''' The received signal does not operate '''


def mySignalHandle(signum=0, e=0):
    pass


''' Master work Interceptor function '''


class Interceptor(object):
    def __init__(self):
        self.master_fd = None
        self.IS_ALTERNATE_MODE = False
        self.IS_HISTORY_COMMAND_MODE = False
        self.IS_GET_STDOUT_TAB = False
        self.IS_INPUT_PASSWORD = False
        self.IS_REMOTE_SSH = False
        # self.RE_PATTEN = re.compile(r'\x1b\x5b[\x31-\x39]\x50',re.IGNORECASE)
        self.RE_PATTEN = re.compile(r'\x1b\x5b[\x31-\x4b]', re.IGNORECASE)  # HISTORY_COMMAND_MODE split flags
        self.RE_MATCH_STRING = re.compile(r'^[\x21-\x7e|\x20]*$', re.IGNORECASE)
        self.RE_ALTERNATE_CMD = re.compile(r'^:\s*[r|w]?\s*!\s*\w', re.IGNORECASE)
        self.RE_PROTECTION_PID = re.compile(r'.*\bkill\s*-9\s*(%s\b|%s\b)+' % (str(G_PID), str(G_PPID)), re.IGNORECASE)
        self.location = 0
        self.txt_input = ''
        self.remote_ssh_ip = ''

    def spawn(self, argv=None):
        assert self.master_fd is None
        if not argv:
            argv = [os.environ['SHELL']]

        pid, master_fd = pty.fork()
        self.master_fd = master_fd
        if pid == pty.CHILD:
            if SUDO_UID > 0:
                os.setgid(SUDO_GID)
                os.setgroups([SUDO_GID])
                os.setuid(SUDO_UID)
                os.environ['LOGNAME'] = G_USER
                os.environ['USER'] = G_USER
                os.environ['HOME'] = G_HOME
                os.environ['PATH'] = '/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:' + G_HOME + '/bin'
                os.environ['USERNAME'] = G_USER
                os.environ['MAIL'] = '/var/spool/mail/' + G_USER
                os.chdir(G_HOME)
            os.execlp(argv[0], *argv)
        old_handler = signal.signal(signal.SIGWINCH, self._signal_winch)
        try:
            mode = tty.tcgetattr(pty.STDIN_FILENO)
            tty.setraw(pty.STDIN_FILENO)
            restore = 1
        except tty.error:  # This is the same as termios.error
            restore = 0
        self._init_fd()
        try:
            self._copy()
        except (IOError, OSError):
            if restore:
                tty.tcsetattr(pty.STDIN_FILENO, tty.TCSAFLUSH, mode)

        os.close(master_fd)
        self.master_fd = None
        signal.signal(signal.SIGWINCH, old_handler)

    def _init_fd(self):
        self._set_pty_size()

    def _signal_winch(self, signum, frame):
        self._set_pty_size()

    def _set_pty_size(self):
        assert self.master_fd is not None
        buf = array.array('h', [0, 0, 0, 0])
        fcntl.ioctl(pty.STDOUT_FILENO, termios.TIOCGWINSZ, buf, True)
        fcntl.ioctl(self.master_fd, termios.TIOCSWINSZ, buf, True)

    def _copy(self):
        assert self.master_fd is not None
        master_fd = self.master_fd
        while 1:
            try:
                rfds, wfds, xfds = select.select([master_fd, pty.STDIN_FILENO], [], [])
            except select.error, e:
                if e[0] == 4:  # Interrupted system call.
                    continue

            if master_fd in rfds:
                data = os.read(self.master_fd, 1024)
                self.master_read(data)
            if pty.STDIN_FILENO in rfds:
                data = os.read(pty.STDIN_FILENO, 1024)
                self.stdin_read(data)

    def write_stdout(self, data):
        os.write(pty.STDOUT_FILENO, data)

    def write_master(self, data):
        master_fd = self.master_fd
        assert master_fd is not None
        while data != '':
            n = os.write(master_fd, data)
            data = data[n:]

    def master_read(self, data):
        # ss = ''
        # for e in data:
        #    ss = ss + binascii.b2a_hex(e)
        # self.write_log('Ascii: ' + ss)
        ''' VIM Mode '''
        flag = findlast(data, ALTERNATE_MODE_FLAGS)
        if flag is not None:
            if flag in START_ALTERNATE_MODE:
                self.IS_ALTERNATE_MODE = True
            elif flag in END_ALTERNATE_MODE:
                self.IS_ALTERNATE_MODE = False
        ''' Input Password '''
        if data.endswith('password: ') or data.endswith('password:') or data.endswith('Password: ') or data.endswith(
                'Password:') or data.startswith('[sudo] password for'):
            self.IS_INPUT_PASSWORD = True
        else:
            self.IS_INPUT_PASSWORD = False
        ''' SSH Remote Login or close '''
        if data.startswith('Last login:'):
            self.remote_ssh_ip = self.findssh()

        if 'Connection to ' + self.remote_ssh_ip + ' closed.' in data:
            self.remote_ssh_ip = ''

        self.write_stdout(data)

        if self.IS_GET_STDOUT_TAB == True:
            if data.startswith('\x0d\x0a') == False:
                data = data.replace('\x07', '')
                self.txt_input = self.txt_input[0:self.location] + data + self.txt_input[self.location:]
                self.location = self.location + len(data)
        elif self.IS_HISTORY_COMMAND_MODE == True:
            if data != '\x07':
                # self.write_log('debug:' + data)
                data = data.replace('\x08', '')
                regex_result = re.split(self.RE_PATTEN, data)
                if regex_result != None:
                    self.txt_input = regex_result[-1]
                else:
                    self.txt_input = data
                self.location = len(data)

    def stdin_read(self, data):
        # self.write_master(data)
        # if self.IS_ALTERNATE_MODE == False:
        if self.IS_INPUT_PASSWORD == False:
            self.IS_HISTORY_COMMAND_MODE = False
            self.IS_GET_STDOUT_TAB = False

            if data == '\x0d':  # [Enter]
                if len(self.txt_input) > 0:
                    if self.remote_ssh_ip != '':
                        self.write_log(self.remote_ssh_ip + ' -> ' + self.txt_input)
                    else:
                        self.write_log(self.txt_input)
                if re.match(self.RE_PROTECTION_PID, self.txt_input):  # if kill -9 my process
                    return 0
                self.txt_input = ''
                self.location = 0
            elif data == '\x03':  # [Ctrl+C]
                self.txt_input = ''
                self.location = 0
            elif data == '\x08':  # [Backspace]
                if self.location > 0:
                    self.txt_input = self.txt_input[0:self.location - 1] + self.txt_input[self.location:]
                    self.location = self.location - 1
            elif data == '\x1b\x5b\x44':  # [<-]
                if self.location > 0:
                    self.location = self.location - 1
            elif data == '\x1b\x5b\x43':  # [->]
                if self.location < len(self.txt_input):
                    self.location = self.location + 1
            elif data == '\x1b\x5b\x31\x7e':  # [Home]
                self.location = 0
            elif data == '\x1b\x5b\x34\x7e':  # [End]
                self.location = len(self.txt_input)
            elif data == '\x1b\x5b\x33\x7e':  # [Delete]
                self.txt_input = self.txt_input[0:self.location] + self.txt_input[self.location + 1:]
            elif data == '\x09':  # [Tab]
                self.IS_GET_STDOUT_TAB = True
            elif data in HISTORY_COMMAND_MODE_FLAGS:  # [^,v,PgUp,PgDn]
                self.IS_HISTORY_COMMAND_MODE = True
            elif re.match(self.RE_MATCH_STRING, data):
                # else:
                self.txt_input = self.txt_input[0:self.location] + data + self.txt_input[self.location:]
                self.location = self.location + len(data)
        self.write_master(data)

    def write_log(self, data):
        b = True
        if self.IS_ALTERNATE_MODE == True:
            if re.match(self.RE_ALTERNATE_CMD, data):
                data = '[' + time.strftime('%Y-%m-%d %H:%M:%S',
                                           time.localtime(time.time())) + ' :ALTERNATE_MODE] ' + data + '\n'
            else:
                b = False
        else:
            data = '[' + time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time())) + '] ' + data + '\n'

        if b:
            fd = open(LOG_FILE, 'a+')
            fd.write(data)
            fd.close()

    def findssh(self):
        cmd_result = os.popen(
            "pstree -p " + str(G_PID) + " |grep " + str(G_PID) + " |awk -F\"-\" '{print $NF}'").read().strip()
        if cmd_result.startswith('ssh('):
            pid = cmd_result[4:-1]
            cmd_result = os.popen(
                "/bin/netstat -tnp |grep -e '\\b%s/' |awk -F':' '{print $2}'|awk '{print $NF}'" % pid).read().strip()
            if cmd_result:
                return cmd_result
            else:
                return ''
        else:
            return ''


if __name__ == '__main__':
    t = time.strptime("20150815", "%Y%m%d")
    end_day = datetime.datetime(*t[0:6])
    today = datetime.datetime.today()
    if end_day > today:
        sys.exit(1)

    ''' Singleton '''
    if G_TTY == '':
        G_TTY = os.getenv('SSH_TTY', default='')
        if G_TTY:
            G_TTY = G_TTY.strip()[5:]
        else:
            G_TTY = 'tty1'
    PID_FILE = '/tmp/.' + G_TTY.replace('/', '_') + '.pid'
    appInstance = ApplicationInstance(PID_FILE)
    signal.signal(signal.SIGTERM, mySignalHandle)
    G_PID = os.getpid()
    G_PPID = os.getppid()

    print PID_FILE
    print G_PID
    print G_PPID
    ''' Get Environment variables '''

    ''' Get Login USER '''
    SUDO_USER = os.getenv('SUDO_USER', default='')
    if SUDO_USER != '':  # If not root login and sudo exec me
        G_USER = SUDO_USER
    else:
        G_USER = os.getenv('USER', default='')

    ''' Get User UID,GID '''
    tmp_user = G_USER.replace('\\', '\\\\')
    LAN_USER = os.getenv('LAN_USER', default='')
    LAN_USER = LAN_USER.replace('\\', '-')
    if LAN_USER:  # If you login from LAN springboard
        # _UID = int(os.popen('id -u %s' % tmp_user).read().strip())
        # if _UID == 0 and LAN_USER != G_USER: # if Login users is root
        if LAN_USER != G_USER:  # if Login users is root
            os.system('/usr/sbin/groupadd 7road -g 2000 2>/dev/null')
            os.system('/usr/sbin/useradd %s -g 7road 2>/dev/null' % LAN_USER)
            tmp_user = LAN_USER
    # ''' Get User UID,GID '''
    SUDO_UID = int(os.popen('/usr/bin/id -u %s' % tmp_user).read())
    SUDO_GID = int(os.popen('/usr/bin/id -g %s' % tmp_user).read())
    print SUDO_UID
    print SUDO_GID
    ''' Get Users Home Direcotry '''
    G_HOME = os.popen("/bin/su %s -c 'env' |grep -e '^HOME=' |awk -F= '{print $2}'" % tmp_user).read().strip()
    print G_HOME
    ''' Get Login IP '''
    _SSHIP = os.getenv('SSH_CLIENT', default='')
    if _SSHIP:
        _SSHIP = _SSHIP.split()[0]
    else:
        _SSHIP = 'localhost'

    _LANIP = os.getenv('LAN_SSH_CLIENT', default='')  # If you login from LAN springboard
    if _LANIP:
        _LANIP = _LANIP.split()[0]
    # else:
    #    if _SSHIP:
    #        _LANIP = _SSHIP.split()[0]
    #    os.environ['LAN_SSH_CLIENT'] = _LANIP


    ''' Initialize Direcotry '''
    LOGIN_TIME = time.strftime('%Y-%m-%d', time.localtime(time.time()))
    LOG_FILE_DIR = '/var/log/myaudit/'
    if os.path.exists(LOG_FILE_DIR) == False:
        os.mkdir(LOG_FILE_DIR, 0750)

    LOG_FILE = LOG_FILE_DIR + LOGIN_TIME + '_' + G_USER + '_' + LAN_USER + '_' + _SSHIP + '_' + _LANIP + '.log'

    if not LAN_USER:
        os.environ['LAN_USER'] = G_USER
    if not _LANIP:
        os.environ['LAN_SSH_CLIENT'] = _SSHIP.split()[0]
    ''' Write Last Login '''
    fd = open(LOG_FILE_DIR + 'lastlogin.log', 'a+')
    lastlgoin_data = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(
        time.time())) + ' ' + G_USER + ' | ' + LAN_USER + ' | ' + _SSHIP + ' | ' + _LANIP + '\n'
    fd.write(lastlgoin_data)
    fd.close()
    ''' Join Pseudo-terminal '''
    print 'Join start'
    i = Interceptor()
    i.spawn(sys.argv[1:])
    print 'Join End'

    ''' Exit cleanup '''
    appInstance.exitApplication()
    sudo_ppid = int(os.popen("/bin/ps -p %d -o ppid=" % G_PPID).read().strip())
    os.kill(sudo_ppid, signal.SIGKILL)
