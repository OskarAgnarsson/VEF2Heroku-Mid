#from sys import argv

#import bottle
from bottle import *
import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol/") as url:
    data= json.loads(url.read().decode())


@route("/")
def index():
    return template("index.tpl",data=data)


@route("/company/<company>")
def index(company):
    return template("company.tpl", data=data, c=company)

@route("/moreinfo/<key>")

def index(key):
    return template("moreinfo.tpl", data=data, key=key)
##########################################
@error(404)
def villa(error):
    return "<h2>Error 404: Not Found</h2>"

@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

run(host = "localhost", port = 8080, reloader = True)

#bottle.run(host="0.0.0.0", port=argv[1])
