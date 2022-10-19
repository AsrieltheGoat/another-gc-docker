#!/bin/ash
cd /root/grass/resources
git pull
cd /root/grass
ash /root/updateFile.sh &
wait
java -jar grasscutter*.*jar