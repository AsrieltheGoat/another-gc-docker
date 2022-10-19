#!/bin/ash
echo "Downloading latest version of grasscutter..."
GC_RELEASE=https://api.github.com/repos/Grasscutters/Grasscutter/releases/
curlRes=$(curl -s $GC_RELEASE/latset)

# Check for curl error and for ""https://docs.github.com/rest/overview/resources-in-the-rest-api#rate-limiting""
if [[ $curlRes == *"API rate limit exceeded"* ]]; then
    # get the number which is at x-ratelimit-reset then pass to date to get date, sed after the first space in the string
    resetTime=$(curl -sI $GC_RELEASE/latset | grep "x-ratelimit-reset:" | sed 's/[^ ]* //')
    echo "GitHub API rate limit exceeded, please wait till $(date -d @$resetTime)"
    exit 1
fi




# URL=$(curl -s $GC_RELEASE/latset | grep grasscutter*.*jar | cut -d '"' -f 4 | sed 's/[^ ]* //' || TESTURL="false")

# if [ "$TESTURL" = "false" ]; then
#     echo "Failed to get latest version of grasscutter"
#     exit 1
# fi

# # Check for existing jar file and delete it then replace with the latest version
# if [ -f grasscutter*.jar ]; then
#     rm grasscutter*.jar
# fi