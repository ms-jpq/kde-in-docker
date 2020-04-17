#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

mkdir -p "$HOME/.config"
mv /misc/kscreenlockerrc "$HOME/.config/kscreenlockerrc"
