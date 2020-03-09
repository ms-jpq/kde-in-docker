#!/bin/bash

set -eu
set -o pipefail

mkdir -p /misc/desktop /root/Desktop
mv /misc/desktop/* /root/Desktop
