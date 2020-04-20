#!/bin/bash

set -eu
set -o pipefail

mkdir -p /root/.config
mv /misc/kscreenlockerrc /root/.config/kscreenlockerrc
