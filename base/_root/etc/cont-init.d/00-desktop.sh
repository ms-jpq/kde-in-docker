#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid mkdir -p /misc/desktop $HOME/Desktop
mv /misc/desktop/* $HOME/Desktop
