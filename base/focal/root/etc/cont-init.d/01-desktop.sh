#!/bin/bash

set -eu
set -o pipefail

cat /usr/share/applications/org.kde.dolphin.desktop > $HOME/Desktop/dolphin.desktop
cat /usr/share/applications/org.kde.konsole.desktop > $HOME/Desktop/konsole.desktop
