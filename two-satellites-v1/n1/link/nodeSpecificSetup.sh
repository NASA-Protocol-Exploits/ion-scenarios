#!/bin/bash

export DISPLAY=localhost:10.0

sleep 15
`dirname $SESSION_FILENAME`/../common/runcg2.py

