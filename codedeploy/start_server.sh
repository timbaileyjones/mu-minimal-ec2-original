#!/bin/bash
echo ==================
echo starting $0 in `pwd`
cd `dirname $0`/..
echo now in $PWD
echo ==================
export PATH=/usr/local/bin:$PATH
export FLASK_APP=hello.py 
#
#  added a little voodoo from the bottom of this page:
#     https://docs.aws.amazon.com/codedeploy/latest/userguide/troubleshooting-deployments.html#troubleshooting-long-running-processes
#
cd /home/ec2-user
nohup flask run -p 8080 > /dev/null 2> /dev/null < /dev/null &

echo $! > /tmp/flask.pid

exit 0
