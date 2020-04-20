#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid mkdir -p $HOME/.config
s6-setuidgid kid mv /misc/kscreenlockerrc $HOME/.config/kscreenlockerrc
