import paho.mqtt.client as mqtt
import time

client = mqtt.Client("FILE_RECEIVE")
client.connect("111.93.133.142", 1883)
client.subscribe("receive_file",0)

print "<-----subscribed------>"

def on_message(client, userdata, message):
     with open('/SpiderHub/Version/Executables/spider_new', 'wb') as fd:
          fd.write(message.payload)
     print("message received " ,message.payload)


client.on_message = on_message
while True:
   client.loop()
   #print "In loop"
