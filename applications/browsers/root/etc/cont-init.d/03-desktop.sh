#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

cat /usr/share/applications/chromium-browser.desktop > "$HOME/Desktop/chromium.desktop"
