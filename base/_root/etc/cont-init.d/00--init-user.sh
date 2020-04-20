#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

groupmod -o -g $PGID kid
usermod -o -u $PUID kid

if [[ $PGID -eq 0 ]] && [[ $PUID -eq 0 ]]
then
  s6-setuidgid kid ln -s /root /config
else
  s6-setuidgid kid mkdir -p /config
fi
