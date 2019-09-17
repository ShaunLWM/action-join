#!/bin/sh

curl \
--silent --output /dev/null \
--data-urlencode "title=$JOIN_TITLE" \
--data-urlencode "text=$JOIN_TEXT" \
--data-urlencode "deviceId=$JOIN_DEVICE_ID" \
--data-urlencode "apikey=$JOIN_API_KEY" \
"https://joinjoaomgcd.appspot.com/_ah/api/messaging/v1/sendPush"