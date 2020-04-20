#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

cat /usr/share/applications/motrix.desktop > $HOME/Desktop/motrix.desktop
