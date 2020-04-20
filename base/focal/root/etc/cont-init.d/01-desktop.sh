#!/bin/bash

set -eu
set -o pipefail

cat /usr/share/applications/org.kde.dolphin.desktop > /config/Desktop/dolphin.desktop
cat /usr/share/applications/org.kde.konsole.desktop > /config/Desktop/konsole.desktop
