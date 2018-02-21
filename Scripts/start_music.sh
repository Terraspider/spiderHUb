##for playing the mp3 in order##
#mpg123 /WiFi_For_SpiderHub/music/*.mp3 > /dev/null 2>&1 &
##without exact directory##
#find . -iname "*.mp3" | mpg123 --list - > /dev/null 2>&1 &

##for shuffle and playing##
##without exact directory##
pkill mpg123
sleep .1
echo 'playing' > /SpiderHub/Flags/play_status.txt
find /SpiderHub/music/ -iname "*.mp3" | mpg123 -Z --list - > /dev/null 2>&1 &
