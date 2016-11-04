# coding=utf-8
#-------------------------------------------------------------------------
# Name:        发送Email模块
# Author:      lou.huang
# Created:     2013/08/14
# Copyright:   (c) lou.huang 2013
# Site:        http://www.0x001.com
#-------------------------------------------------------------------------
# python sendMail.py 'smtp.163.com' 'ujfgsa43@163.com' 'dfsfgfsd34d'
# '4897393@qq.com' 'test by eric.chen' './report/ccc.html'
import smtplib
from email.MIMEText import MIMEText
from email.MIMEMultipart import MIMEMultipart


class lib_email:
    #datetime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M")
    errmsg = "发送Email模块错误: %s"

    def __init__(self, host, username, password, port=25):
        self.host = host
        self.username = username
        self.password = password
        self.port = port

    def do_connect(self):
        self.smtp = smtplib.SMTP()
        try:
            result = self.smtp.connect(self.host + ':' + str(self.port))
            print result
            result = self.smtp.login(self.username, self.password)
            print result
        except Exception, e:
            print self.errmsg % e
            return False
        return True

    def make_email_body(self):
        to_string = ''
        for item in self.send_to:
            to_string += item + ','
        self.email_body = MIMEMultipart()
        self.email_body['From'] = self.email_from
        #self.email_body['To'] = self.send_to
        self.email_body['To'] = to_string
        self.email_body['Subject'] = self.subject
        #message = MIMEText(self.message_body,'plain','utf-8')
        message = MIMEText(self.message_body, 'html', 'utf-8')
        self.email_body.attach(message)

    def do_send(self, email_from, subject, send_to, message_body):
        # print send_to
        # print message_body
        self.email_from = email_from
        self.send_to = send_to
        self.subject = subject
        self.message_body = message_body
        self.make_email_body()
        try:
            self.smtp.sendmail(
                self.email_from, self.send_to, self.email_body.as_string())
            print '----------------'
            print 'send mail ok'
            print ''
        # except smtplib.SMTPException,e:
        except Exception, e:
            print e
            pass

    def do_close(self):
        self.smtp.quit()
        # print "Mail sent to %s at %s." % (self.send_to,self.datetime)

if __name__ == '__main__':
    import sys

    if len(sys.argv) < 5:
        print "python " + __file__ + u" smtp服务器' '邮件帐户' '邮件密码' '目标email' '邮件标题' html文件"
    smtpserver = sys.argv[1]
    email = sys.argv[2]
    password = sys.argv[3]
    target = sys.argv[4].replace(';',',').split(',')
    title = sys.argv[5]
    bodyfile = sys.argv[6]
    print type(title.decode('utf-8'))
    #sys.exit(1)
    print 'smtp server ->> %s' % smtpserver
    print 'from email  ->> %s' % email
    print 'password    ->> %s' % password
    print 'target Email ->> %s' % target
    if not isinstance(target,list):
       print 'target split char need ","'
    import os
    if os.path.exists(bodyfile):
        body = open(bodyfile, 'r').read()
        Send_Email = lib_email(smtpserver, email, password)
        isConnect=0
        for i in range(3):
                if Send_Email.do_connect():
                        isConnect=1
                        break
                else:
                        continue
        if isConnect:
                Send_Email.do_send(
                    email.decode('utf-8'), title.decode('utf-8'), target, body)
                Send_Email.do_close()
    else:
        print 'Error: can not open file !'
