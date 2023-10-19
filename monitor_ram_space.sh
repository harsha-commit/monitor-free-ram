#!/bin/bash

#set -x

# Free Space is in MB
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')

echo "Free Space : $FREE_SPACE"

# Threshold is in MB
TH=500

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "WARNING, RAM is RUNNING LOW !!!"
else
	echo "Sufficient Free RAM Space - $FREE_SPACE M"
fi



