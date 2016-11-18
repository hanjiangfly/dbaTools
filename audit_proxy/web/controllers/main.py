#!/usr/bin/env python
# coding: utf-8
import os

import chardet
import web

from config import settings
from config import ctrl

try:
    import hashlib
except ImportError:
    import md5 as hashlib

render = settings.render


def CalcMD5(strings):
    """ 计算md5 """
    md5obj = hashlib.md5()
    md5obj.update(strings)
    hash = md5obj.hexdigest()
    return hash


def getstr(strings):
    #enc = chardet.detect(strings)
    #if enc['encoding'] != 'ascii' and enc['encoding'] is not None:
    #    strings = strings.decode(enc['encoding'], 'ignore')
    strings = strings.decode('utf-8', 'ignore')
    return strings


class Index:

    """ 首页 """
    @ctrl.checkIP
    def GET(self):
        render = settings.render_notlayout
        return render.index()


class Logout:

    """ 退出 """
    @ctrl.checkIP
    def GET(self):
        web.ctx.session.kill()
        raise web.seeother('/')


class Login:

    ''' 登录 '''
    @ctrl.checkIP
    def GET(self):
        raise web.seeother('/')

    @ctrl.checkIP
    def POST(self):
        i = web.input()
        username = i.get('username', '')
        password = CalcMD5(i.get('password', ''))
        
        #if username == settings.Username and password == settings.Password:
        if username == settings.Username: 
            web.ctx.session.username = username
            raise web.seeother('/search')
        else:
            raise web.notfound()


class Logs:

    ''' 日志文件列表 '''
    @ctrl.checkIP
    @ctrl.checkLogin
    def GET(self):
        model = self.logList()
        return render.logs(model)

    def logList(self):
        result = ''
        if not os.path.exists(settings.LogDir):
            return result
        listfile = os.listdir(settings.LogDir)
        listfile.sort()
        for line in listfile:
            result += '<a href="look?file=' + line + '">' + line + '</a></br>'
        return result


class Look:

    ''' 查看日志内容 '''
    @ctrl.checkIP
    @ctrl.checkLogin
    def GET(self):
        i = web.input()
        filename = i.get('file', None)
        if not filename:
            raise web.notfound()

        filename = settings.LogDir + filename.replace('..', '')

        if os.path.isfile(filename) is False:
            raise web.notfound()

        model = self.readFile(filename)

        return render.look(model)

    def readFile(self, filename):

        result = []
        f = open(filename, 'r')
        for line in f:
            line = getstr(line)
            result.append(line)
            result.append('</br>')
        f.close()
        return ''.join(result)


class Search:

    ''' 搜索页面 '''

    @ctrl.checkIP
    @ctrl.checkLogin
    def GET(self):
        model = 'GET'
        keyword = ''
        return render.search(model, keyword)

    @ctrl.checkIP
    @ctrl.checkLogin
    def POST(self):
        i = web.input()
        _date = i.get('date', '')
        _keyword = i.get('keyword', '')
        _remoteip = i.get('remoteip', '')
        _lanip = i.get('lanip', '')
        _user = i.get('user', '')

        model = ''
        keyword = _keyword
        files = self.getFiles(_date, _lanip, _user)
        if not files:
            model = 'Sorry, not found.'
            return render.search(model, keyword)

        files.sort()
        if not _keyword and not _remoteip:
            for f in files:
                model += '<a href="look?file=' + f + '">' + f + '</a></br>'
        else:
            for f in files:
                model += self.findKeyword(f, _keyword, _remoteip)
            if not model:
                model = 'Sorry, not found.'

        return render.search(model, keyword)

    def findKeyword(self, filename, keyword, remoteip):
        result = []
        f = open(settings.LogDir + filename, 'r')
        for line in f:
            line = getstr(line)
            if keyword and remoteip:
                if keyword in line and remoteip in line:
                    result.append(line)
                    result.append('</br>')
            else:
                b = False
                if keyword:
                    if keyword in line:
                        result.append(line)
                        result.append('</br>')
                        b = True
                if remoteip and b is False:
                    if remoteip in line:
                        result.append(line)
                        result.append('</br>')
        f.close()

        if result:
            result.append('<b>-----------------------')
            result.append(filename)
            result.append('-----------------------</b></br>')
        return ''.join(result)

    def getFiles(self, date, lanip, user):
        files = []
        if not os.path.exists(settings.LogDir):
            return files
        listfile = os.listdir(settings.LogDir)
        for line in listfile:
            if line.startswith(date) and lanip in line and user in line:
                files.append(line)
        return files

