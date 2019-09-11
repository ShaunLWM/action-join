#!/bin/sh

curl \
--silent --output /dev/null \
--data-urlencode "title=$TITLE" \
--data-urlencode "text=$TEXT" \
--data-urlencode "deviceId=$DEVICE_ID" \
--data-urlencode "apikey=$API_KEY" \
"https://joinjoaomgcd.appspot.com/_ah/api/messaging/v1/sendPush"