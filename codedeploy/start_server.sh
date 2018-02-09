#!/bin/bash
export PATH=/usr/local/bin:$PATH
export FLASK_APP=hello.py 
flask run &

echo $! > /tmp/flask.pid

exit 0
