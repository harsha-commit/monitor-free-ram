#!/bin/bash

FU=$(df -H | grep /vda2  | awk '{print $5}' | tr -d %)

if [[ $FU -ge 80 ]] 
then
	echo "WARNING !!! Disk Space is LOW"
else
	echo "Disk Space is ADEQUATE"
fi

