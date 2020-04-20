#!/bin/bash

set -eu
set -o pipefail

cat /usr/share/applications/firefox.desktop > $HOME/Desktop/firefox.desktop
