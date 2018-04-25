#!/bin/bash

gcc /SpiderHub/Firmware/Application.c /SpiderHub/C_Files/bbg_gpio.c /SpiderHub/C_Files/bbg_system_handler.c /SpiderHub/C_Files/bbg_uart.c /SpiderHub/C_Files/ble_handler.c /SpiderHub/C_Files/filesystem.c /SpiderHub/C_Files/jsmn.c /SpiderHub/C_Files/json.c /SpiderHub/C_Files/jWrite.c /SpiderHub/C_Files/lednotify.c /SpiderHub/C_Files/User_management.c  /SpiderHub/Firmware/main.c -o /SpiderHub/Version/Executables/spider_new -lpaho-mqtt3c

echo "Done"
exit 0
