#!/bin/sh
apk update
#apk add
apk add --no-cache git curl wget openjdk17-jre-headless
mkdir -p ./grass
cd ./grass
rm -rf ./grasscutter*.*jar
curl -s $GC_RELEASE | grep grasscutter*.*jar | cut -d '"' -f 4 | wget -qi -
mkdir -p ../res-repo
cd ../res-repo
git clone $GC_RES_REPO
cd ../grass
ln -s ../res-repo/Grasscutter_Resources/Resources ./resources

