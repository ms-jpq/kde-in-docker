#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid mkdir -p /misc/desktop /config/Desktop
s6-setuidgid kid mv /misc/desktop/* /config/Desktop
