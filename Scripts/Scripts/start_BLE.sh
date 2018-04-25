#!/bin/bash
echo 'stopped' > /SpiderHub/Flags/play_status.txt
echo "connect 00:1A:7D:E2:3D:5E" | bluetoothctl >/dev/null 2>&1
