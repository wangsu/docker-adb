#!/bin/bash

echo "Starting up ADB..."

if [ -f /data/adbkey ]; then
  echo "Found existing private key. Using it."
  cp /data/adbkey /root/.android && cp /data/adbkey.pub /root/.android
fi

while true; do
  adb -a server nodaemon > /dev/null 2>&1
  sleep 10
done &

echo "Server started. Waiting for 30 seconds..."
sleep 30

if [ ! -f /data/adbkey ]; then
  echo "Saving newly generated private key."
  cp /root/.android/adbkey /data/adbkey && cp /root/.android/adbkey.pub /data/adbkey.pub
fi


while true; do  
  sleep 60
done
