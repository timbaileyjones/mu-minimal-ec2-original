#!/bin/bash
echo ==================
echo starting $0 in `pwd`
echo files here are: 
find . -type f -print
echo ==================
export PATH=/usr/local/bin:$PATH
export FLASK_APP=hello.py 
flask run &

echo $! > /tmp/flask.pid

exit 0
