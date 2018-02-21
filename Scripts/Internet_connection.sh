#!/bin/bash

INTERNET_STATUS=0

    timeout 5 ping -c 1 -W 0.7 8.8.4.4 > /dev/null 2>&1
    if [ $? -eq 0 ] ; then
	#echo "Online"
	#INTERNET_STATUS=1
	echo $INTERNET_STATUS
	exit 1
    else
	#echo "Offline"
	#INTERNET_STATUS=0
	#echo $INTERNET_STATUS
	exit 0
    fi
    sleep 1
