#!/bin/bash

set -eu
set -o pipefail

cat /usr/share/applications/org.kde.dolphin.desktop > /root/Desktop/dolphin.desktop
cat /usr/share/applications/org.kde.konsole.desktop > /root/Desktop/konsole.desktop
