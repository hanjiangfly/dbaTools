#!/usr/bin/env python
# coding: utf-8
import web
import settings
iplists = settings.TrustedIP


def checkIP(func):
    ''' IP授权访问控制 '''
    def _checkIP(*args, **kwargs):
        isrusted = False
        remote_ip = web.ctx.env.get('REMOTE_ADDR')
        if remote_ip in iplists:
            isrusted = True
        elif remote_ip.startswith('10.') or remote_ip.startswith('192.168.'):
            isrusted = True
        elif remote_ip.startswith('172.'):
            ipsub = int(remote_ip.split('.')[1])
            if ipsub >= 16 and ipsub <= 31:
                isrusted = True
        if not isrusted:
            raise web.notfound()

        ret = func(*args, **kwargs)
        return ret
    return _checkIP


def checkLogin(func):
    ''' 判断是否登录 '''
    def _checkLogin(*args, **kwargs):
        if not web.ctx.session.username:
            raise web.notfound()

        return func(*args, **kwargs)
    return _checkLogin


def csrfProtected(func):
    ''' 防止csrf攻击 '''
    def _csrfProtected(*args, **kwargs):
        i = web.input()
        token = web.cookies().get('csrf')
        if not (('csrf' in i) and i.csrf == token):
            raise web.notfound()

        return func(*args, **kwargs)
    return _csrfProtected
