#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

groupmod -o -g $PGID kid
usermod -o -u $PUID kid

# Link /root -> /config
# for compatibility reasons
if [[ $PGID -eq 0 ]] && [[ $PUID -eq 0 ]]
then
  ln -s /root /config
else
  mkdir -p /config
fi

chown kid:kid /config
