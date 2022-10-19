#!/bin/ash
mkdir -p /root/grass/res-repo
cd /root/grass/res-repo
git clone $GC_RES_REPO
cd /root/grass
ln -s /root/grass/res-repo/Grasscutter_Resources/Resources ./resources

