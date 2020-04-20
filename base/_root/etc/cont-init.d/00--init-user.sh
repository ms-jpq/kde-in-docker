#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

groupmod -o -g "$PGID" kid
usermod -o -u "$PUID" kid
echo "kid:$ROOT_PASSWORD" | chpasswd
echo "root:$ROOT_PASSWORD" | chpasswd


# Link /root -> $HOME
# for compatibility reasons
if [[ "$PGID" -eq 0 ]] && [[ "$PUID" -eq 0 ]]
then
  if [[ ! -e "$HOME" ]]
  then
    ln -s /root "$HOME"
  fi
else
  mkdir -p "$HOME"
fi

chown kid:kid "$HOME"
