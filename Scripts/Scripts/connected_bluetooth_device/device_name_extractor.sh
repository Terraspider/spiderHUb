#echo paired-devices | bluetoothctl > bluetooth_details.txt
echo | bluetoothctl paired-devices > bluetooth_details.txt
sleep 1
#grep -n "Device" device_details.txt > device_name.txt
head -n $(awk '/Device/{ print NR; exit }' bluetooth_details.txt) bluetooth_details.txt | tail -n -1 > device_details.txt
awk '{for (I=1;I<=NF;I++) if ($I == "Device") {print $(I+2)};}' device_details.txt > device_name.txt
