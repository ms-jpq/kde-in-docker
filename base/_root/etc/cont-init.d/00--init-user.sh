#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

groupmod -o -g $PGID kid
usermod -o -u $PUID kid
