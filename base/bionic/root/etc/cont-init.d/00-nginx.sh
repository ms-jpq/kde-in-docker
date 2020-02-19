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
# UI.initSetting('path', 'websockify'); -> UI.initSetting('path', 'prefix/websockify');
sed -i 's@UI.initSetting('\''path'\'', '\''websockify'\'');@UI.initSetting('\''path'\'', '\'''"$PURE_PREFIX"'websockify'\'');@' /novnc/app/ui.js

# readQueryVariable('path', 'websockify'); -> readQueryVariable('path', 'prefix/websockify');
sed -i 's@readQueryVariable('\''path'\'', '\''websockify'\'');@readQueryVariable('\''path'\'', '\'''"$PURE_PREFIX"'websockify'\'');@' /novnc/vnc_lite.html
