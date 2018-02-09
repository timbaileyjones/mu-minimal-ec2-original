#!/bin/bash
export FLASK_APP=hello.py 
flask run &

echo $! > /tmp/flask.pid

exit 0
