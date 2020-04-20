#!/bin/bash

set -eu
set -o pipefail

mkdir -p /misc/desktop /config/Desktop
mv /misc/desktop/* /config/Desktop
