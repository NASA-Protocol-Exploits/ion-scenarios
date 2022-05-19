#!/bin/bash
#(Un)comment the below two lines to auto start/stop the startup script.

DIR=`dirname $SESSION_FILENAME`
$DIR/custom-scripts/scripts/satellite_two/CFDPPutLoop.sh

