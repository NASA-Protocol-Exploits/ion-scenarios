#!/bin/bash

export DISPLAY=localhost:10.0
DIR=`dirname $SESSION_FILENAME`
echo "I'm in NodeSpecificSetup.sh" >> n2.log
$DIR/../common/watchReceiveCFDP.py

