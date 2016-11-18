#!/usr/bin/env python
# coding: utf-8
from config.url import urls
import web

app = web.application(urls, globals())

session = web.session.Session(
    app, web.session.DiskStore('sessions'), initializer={'username': ''})


def session_hook():
    web.ctx.session = session
app.add_processor(web.loadhook(session_hook))


def notfound():
    return web.notfound("|(-_-)| Sorry. 404.")
app.notfound = notfound

if __name__ == "__main__":
    app.run()
