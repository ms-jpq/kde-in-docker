#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid mkdir -p /config/.config
s6-setuidgid kid mv /misc/kscreenlockerrc config/.config/kscreenlockerrc
