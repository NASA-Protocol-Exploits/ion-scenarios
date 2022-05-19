#!/bin/bash

#Sleep for 35 seconds before transmitting
sleep 35

#Step into while loop
while true; do
	/home/core/ion-scenarios/two-satellites-v1/custom-scripts/scripts/satellite_two/CFDPPutWithMessage.sh	
	sleep 35
done
