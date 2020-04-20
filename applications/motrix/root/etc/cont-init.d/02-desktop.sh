#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid cat /usr/share/applications/motrix.desktop > /config/Desktop/motrix.desktop
