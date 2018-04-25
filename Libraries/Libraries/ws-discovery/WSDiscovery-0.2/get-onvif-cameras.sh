#!/bin/bash

#echo "Searching"

for ((i=1;i<=5;i+=1))
do
    #echo $i
    python WSDiscovery.py >> discovered-network-devices.txt
done

grep -P '\bonvif\b' discovered-network-devices.txt > onvif-cameras-filter.txt
sort -u onvif-cameras-filter.txt > onvif-cameras-list.txt
#sort -u onvif-cameras-filter.txt > /SpiderHub/onvif-camera-list.txt
> discovered-network-devices.txt
> onvif-cameras-filter.txt
#tr '\n' '$' < onvif-cameras-list.txt   | sed 's/\ $//g' > /SpiderHub/onvif-camera-list.txt

