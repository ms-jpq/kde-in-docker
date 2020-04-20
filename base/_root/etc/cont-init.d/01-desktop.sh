#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

mkdir -p /misc/desktop "$HOME/Desktop"
mv /misc/desktop/* "$HOME/Desktop"
