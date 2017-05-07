from flask import Flask
from time import gmtime, strftime, sleep
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    out = strftime("%Y-%m-%d %H:%M:%S", gmtime())
    out = out + '; Flask Dockerized; Sleeping: ' + os.environ['WEB_SLEEP_TIME'] + ' second(s) ... '

    sleep(float(os.environ['WEB_SLEEP_TIME']))

    out = out + strftime("%Y-%m-%d %H:%M:%S", gmtime())

    return out

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')