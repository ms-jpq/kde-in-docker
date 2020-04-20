#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

s6-setuidgid kid mkdir -p $HOME/Desktop
mkdir -p /misc/desktop
mv /misc/desktop/* $HOME/Desktop
