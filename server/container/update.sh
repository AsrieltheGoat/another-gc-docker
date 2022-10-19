#!/bin/sh
echo "Downloading latest version of grasscutter..."

# Check for API connectivity and rate limit

if [ $(curl -s https://api.github.com/rate_limit | jq -r '.rate.remaining') -lt 1 ]; then
    # get the number which is at x-ratelimit-reset then pass to date to get date, sed after the first space in the string
    resetTime=$(curl -s "https://api.github.com/rate_limit" | jq -r '.rate.reset')
    echo "GitHub API rate limit exceeded, please wait till $(date -d @$resetTime)"

    if [ "$CONTAINER" = "true" ]; then
        echo "Skipping download of latest version of grasscutter..., Restart the container to try again"
        exit 0
    else 
        exit 1
    fi
fi

# curlRes=$(curl -s "$GC_RELEASE/latset" | $jq -r '.assets[0].browser_download_url')
curlRes=$(curl -s "https://api.github.com/repos/Grasscutters/Grasscutter/releases/latest" | jq -r '.assets[0].browser_download_url')
echo "Latest release: $curlRes"
wget -qi - $curlRes || echo "Failed to download latest release, using older version if it exists!"
echo "Downloaded latest version of grasscutter!"


# URL=$(curl -s $GC_RELEASE/latset | grep grasscutter*.*jar | cut -d '"' -f 4 | sed 's/[^ ]* //' || TESTURL="false")

# if [ "$TESTURL" = "false" ]; then
#     echo "Failed to get latest version of grasscutter"
#     exit 1
# fi

# # Check for existing jar file and delete it then replace with the latest version
# if [ -f grasscutter*.jar ]; then
#     rm grasscutter*.jar
# fi
