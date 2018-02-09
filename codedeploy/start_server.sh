#!/bin/bash
export FLASK_APP=hello.py 
lask run &

echo $! > /tmp/flask.pid

exit 0
