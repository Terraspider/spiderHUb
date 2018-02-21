#!/bin/bash
pkill mpg123
echo 'stopped' > /SpiderHub/Flags/play_status.txt
#echo "disconnect 00:1A:7D:E2:3D:5E" | bluetoothctl >/dev/null 2>&1
