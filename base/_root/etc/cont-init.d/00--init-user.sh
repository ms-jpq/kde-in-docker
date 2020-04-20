#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

groupmod -o -g $PGID kid
usermod -o -u $PUID kid

if [[ $PGID -eq 0 ]] && [[ $PUID -eq 0 ]]
then
  test -L /config || ln -s /config /root
else
  mkdir -p /config
fi
