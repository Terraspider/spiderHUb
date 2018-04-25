#!/bin/bash

while true;
do
cd /SpiderHub/Version/Executables/
file="spider_new"
if [ -e "$file" ]
then
echo "Detected new version."
rm -r spider_old
kill $(ps aux | grep 'spider' | awk '{print $2}')
mv spider spider_old
sleep 1
mv spider_new spider
chmod -R 777 spider
/SpiderHub/Version/Executables/spider > /dev/null 2>&1 & disown
/SpiderHub/Scripts/bluetooth_voice_alert.sh spider version updated
else
echo "Spider version is uptodate."
fi
sleep 5
done
