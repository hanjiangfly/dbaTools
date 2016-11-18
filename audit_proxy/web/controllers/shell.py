#!/usr/bin/env python
# coding: utf-8
import web
from config import settings
import commands
try:
    import hashlib
except ImportError:
    import md5 as hashlib

render = settings.render


class Index:

    def GET(self):
        sn = 'DE75E-3AV7D-86QCN-EM3Z4'
        i = web.input()
        action = i.get('action', None)
        key = i.get('key', None)

        self.fromdb = i.get('fromdb', None)
        self.siteid = i.get('siteid', None)

        if not key or not action or not self.fromdb:
            return '200'

        tmp_md5 = self.getMD5(sn + action + self.fromdb)
        if tmp_md5 != key:
            return '201'

        return self.runshell(action)

    def POST(self):
        pass

    def runshell(self, action):
        if action == 'sqGetModel':
            return self.sqGetModel(self.fromdb, self.siteid)
        else:
            return '202'

    def sqGetModel(self, fromdb, siteid):
        result = commands.getstatusoutput(
            '/data/software/shenqu/opendb/sqGetModel %s %s local single'
            % (fromdb, siteid))
        ret = "<p>sqGetModel_status=%s</p>" % result[0]
        ret = ret + 'command:' + \
            '/data/software/shenqu/opendb/sqGetModel %s %s local single' % (
                fromdb, siteid)
        return ret

    def getMD5(self, s):
        m = hashlib.md5()
        m.update(s)
        hash = m.hexdigest()
        return hash


class xxx:

    def GET(self):
        return 'hello'
