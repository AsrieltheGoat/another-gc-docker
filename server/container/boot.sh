#!/bin/sh
cd /root/grass/resources
# git pull
cd /root/grass/

# assets=$(curl $GC_RELEASE/latest | jq -r '.[0].assets[0].browser_download_url')
# wget -qi - $assets || echo "Failed to download latest release, using older version if it exists!"

# curl -s $GC_RELEASE | rm -rf ./grasscutter*.*jar | grep grasscutter*.*jar | cut -d '"' -f 4 | wget -qi - || echo "Failed to download latest release, using older version if it exists!"
java -jar grasscutter*.*jar