flag_m=`cat /SpiderHub/Flags/play_status.txt`
if [ "$flag_m" = "playing" ];
then
pkill -STOP mpg123
echo 'paused' > /SpiderHub/Flags/play_status.txt
elif [ "$flag_m" = "paused" ];
then
pkill -CONT mpg123
echo 'playing' > /SpiderHub/Flags/play_status.txt
else
echo 'stopped' > /SpiderHub/Flags/play_status.txt
fi
