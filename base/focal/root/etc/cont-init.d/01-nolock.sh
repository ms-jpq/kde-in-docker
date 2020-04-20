#!/bin/bash

set -eu
set -o pipefail

mkdir -p /config/.config
mv /misc/kscreenlockerrc config/.config/kscreenlockerrc
