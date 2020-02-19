#!/usr/bin/with-contenv sh

TEMP="$(envsubst '${PATH_PREFIX}' < /etc/nginx/nginx.conf)"
echo "$TEMP" > /etc/nginx/nginx.conf
