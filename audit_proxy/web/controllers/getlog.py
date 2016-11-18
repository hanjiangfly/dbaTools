#!/usr/bin/env python
# coding: utf-8
import web
from config import ctrl
from config import settings
import os


class Index:

    ''' 统一拉取日志接口 '''
    @ctrl.checkIP
    def GET(self):
        i = web.input()
        date = i.get('date', '')
        if not date:
            return '0'
        return self.logList(date)

    def logList(self, date):
        ''' 列出文件 '''
        result = []
        if not os.path.exists(settings.LogDir):
            return ''
        listfile = os.listdir(settings.LogDir)
        listfile.sort()
        for line in listfile:
            if line.startswith(date):
                result.append('--------------[[' + line + ']]--------------</br>')
                result.append(self.readFile(settings.LogDir + line))
        return ''.join(result)

    def readFile(self, filename):
        ''' 获取文件内容 '''
        import chardet
        result = []
        f = open(filename, 'r')
        for line in f:
            enc = chardet.detect(line)
            if enc['encoding'] != 'ascii' and enc['encoding'] is not None:
                line = line.decode(enc['encoding']).encode('utf-8')
            result.append(line)
            result.append('</br>')
        f.close()
        return ''.join(result)
