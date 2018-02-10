#!/bin/bash -x
echo ==================
echo starting $0 in `pwd`
cd `dirname $0`/..
echo now in $PWD
echo ==================
export PATH=/usr/local/bin:$PATH
export FLASK_APP=hello.py 
mkdir /tmp/flask
cp -av ./* /tmp/flask

if [ -f /tmp/flask.pid ]
then
  kill -15 `cat /tmp/flask.pid`
fi
#
#  added a little voodoo from the bottom of this page:
#     https://docs.aws.amazon.com/codedeploy/latest/userguide/troubleshooting-deployments.html#troubleshooting-long-running-processes
#
flask run -p 8080 -h 0.0.0.0 > /dev/null 2> /dev/null < /dev/null &

echo $! > /tmp/flask.pid
sleep 3

exit 0
