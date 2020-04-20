#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

groupmod -o -g $PGID abc
usermod -o -u $PUID abc
