#!/bin/bash

set -eu
set -o pipefail

mkdir -p /root/Desktop
cat /usr/share/applications/org.kde.dolphin.desktop > /root/Desktop/dolphin.desktop
cat /usr/share/applications/org.kde.konsole.desktop > /root/Desktop/konsole.desktop
