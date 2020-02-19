#!/usr/bin/with-contenv bash


if [ "$PATH_PREFIX" = "/" ]
then
  export SOCKET_PREFIX=""
else
  export SOCKET_PREFIX="$PATH_PREFIX"
fi

TEMP="$(envsubst '${PATH_PREFIX},${SOCKET_PREFIX}' < /etc/nginx/nginx.conf)"
echo "$TEMP" > /etc/nginx/nginx.conf

PURE_PREFIX="${SOCKET_PREFIX:1}/"
TEMP="$(envsubst '${PURE_PREFIX},${PAGE_TITLE}' < /novnc/index.html)"
echo "$TEMP" > /novnc/index.html
