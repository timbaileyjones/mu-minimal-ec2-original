#!/bin/bash
echo ==================
echo starting $0 in `pwd`
cd `dirname $0`/..
echo now in $PWD
echo ==================
export PATH=/usr/local/bin:$PATH
export FLASK_APP=hello.py 
flask run &

echo $! > /tmp/flask.pid

exit 0
