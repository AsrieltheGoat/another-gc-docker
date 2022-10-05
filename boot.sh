#!/bin/sh
cd /root/grass/resources
git pull
cd /root/grass/
rm -rf ./grasscutter*.*jar
curl -s $GC_RELEASE | grep grasscutter*.*jar | cut -d '"' -f 4 | wget -qi -
java -jar grasscutter*.*jar