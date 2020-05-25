#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

cat /usr/share/applications/AdobeReader.desktop > "$HOME/Desktop/AdobeReader.desktop"
