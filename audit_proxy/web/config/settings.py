#!/usr/bin/env python
# coding: utf-8
import web

#db = web.database(dbn='mysql', db='todo', user='root', pw='')
render = web.template.render(
    'templates/', cache=False, base='layout',
    globals={'session': web.ctx.session})
render_notlayout = web.template.render(
    'templates/', cache=False, globals={'session': web.ctx.session})
Username = 'admin'
Password = '578aa3f84c75268661e4c52a94a6ebdd'
#Password = 'f14ecbf670c3ce4aab7e3d9b3e1cdec2'
LogDir = '/var/log/myaudit/'

web.config.debug = True

config = web.storage(
    email='0x007c@gmail.com',
    site_name='Linux跳板机日志安全审计系统',
    site_desc='0x001出品',
    static='/static',
)

''' 信任的IP列表 '''
TrustedIP = set(
    ['127.0.0.1', '218.17.152.189', '58.250.56.65', '121.15.130.153',
     '121.10.140.140', '125.90.93.192', '113.107.88.124', '112.90.210.124'])


web.template.Template.globals['config'] = config
web.template.Template.globals['render'] = render
