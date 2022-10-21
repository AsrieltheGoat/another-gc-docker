#!/bin/ash
# Check USE_ALT_RES_REPO and replace with alternative repo if set
if [ "$USE_ALT_RES_REPO" = "true" ]; then
    echo "Using alternative resource repository..."
    GC_RES_REPO_DL="$GC_RES_REPO_ALT"
else
    GC_RES_REPO_DL="$GC_RES_REPO"
fi

mkdir -p /root/grass/res-repo
cd /root/grass/res-repo
echo $GC_RES_REPO_DL
git clone $GC_RES_REPO_DL Grasscutter_Resources
cd /root/grass
ln -s /root/grass/res-repo/Grasscutter_Resources/Resources ./resources
