#!/usr/bin/python3
import requests
import json
from flask import Flask
import os

BASE = 'http://php.local'
app = Flask(__name__)


@app.route('/api/index')
def index():
    return json.dumps(['test-test'])

@app.route("/api/techs")
def techs():
    #r = requests.get(BASE+'/techs/legacy_list.php')
    #return r.json()
    url = BASE+'/techs/legacy_list.php'
    cmd = f"curl {url}"
    stream = os.popen(cmd)
    return stream.read()

# bind to all IP addresses port 5000
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
