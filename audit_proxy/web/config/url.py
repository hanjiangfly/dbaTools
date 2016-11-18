#!/usr/bin/env python
# coding: utf-8

pre_fix = 'controllers.'

''' 访问路径对应类列表 '''
urls = (
    '/',            pre_fix + 'main.Index',
    '/login',       pre_fix + 'main.Login',
    '/logout',      pre_fix + 'main.Logout',
    '/logs',        pre_fix + 'main.Logs',
    '/look',        pre_fix + 'main.Look',
    '/search',      pre_fix + 'main.Search',
    '/runshell',    pre_fix + 'shell.Index',
    '/getlog',      pre_fix + 'getlog.Index'
)
