#!/bin/bash

set -eu
set -o pipefail

cat /usr/share/applications/nautilus.desktop > /root/Desktop/nautilus.desktop
cat /usr/share/applications/org.kde.konsole.desktop > /root/Desktop/konsole.desktop
