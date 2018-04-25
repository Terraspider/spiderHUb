#!/bin/sh
public_IP=$(dig +short  myip.opendns.com @resolver1.opendns.com)
curl www.freegeoip.net/xml/$public_IP  >> ip_n_cordinates.xml
#echo $public_IP


