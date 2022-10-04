#!/bin/sh
apt update
#apt upgrade
apt install git curl wget openjdk-17-jre -y
mkdir ./grass
cd ./grass
rm -rf ./grasscutter*.*jar
curl -s $GC_RELEASE | grep grasscutter*.*jar | cut -d '"' -f 4 | wget -qi -
mkdir ../res-repo
cd ../res-repo
git clone $GC_RES_REPO
cd ../grass
ln -s ../res-repo/Grasscutter_Resources/Resources ./resources

