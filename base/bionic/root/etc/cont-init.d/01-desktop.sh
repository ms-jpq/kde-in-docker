#!/bin/bash

set -eu
set -o pipefail

cat /usr/share/applications/nautilus.desktop > /config/Desktop/nautilus.desktop
cat /usr/share/applications/org.kde.konsole.desktop > /config/Desktop/konsole.desktop
