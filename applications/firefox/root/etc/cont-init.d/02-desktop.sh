#!/bin/bash

set -eu
set -o pipefail

cat /usr/share/applications/firefox.desktop > /config/Desktop/firefox.desktop
