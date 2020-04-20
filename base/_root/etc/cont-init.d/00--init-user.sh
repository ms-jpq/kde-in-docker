#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

groupmod -o -g "$PGID" kid
usermod -o -u "$PUID" kid
echo "kid:$ROOT_PASSWORD" | chpasswd


# Link /root -> $HOME
# for compatibility reasons
if [[ "$PGID" -eq 0 ]] && [[ "$PUID" -eq 0 ]]
then
  ln -s /root "$HOME"
else
  mkdir -p "$HOME"
fi

chown kid:kid "$HOME"
