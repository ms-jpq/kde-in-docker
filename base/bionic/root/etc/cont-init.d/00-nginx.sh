#!/usr/bin/with-contenv sh


if [ "$PATH_PREFIX" = "/" ]
then
  export SOCKET_PREFIX=""
else
  export SOCKET_PREFIX="$PATH_PREFIX"
fi

TEMP="$(envsubst '${PATH_PREFIX},${SOCKET_PREFIX}' < /etc/nginx/nginx.conf)"
echo "$TEMP" > /etc/nginx/nginx.conf

PURE_PREFIX="${SOCKET_PREFIX:1}/"
sed -i 's@UI.initSetting('\''path'\'', '\''websockify'\'');@UI.initSetting('\''path'\'', '"$PURE_PREFIX"'websockify'\'');@' novnc/app/ui.js
