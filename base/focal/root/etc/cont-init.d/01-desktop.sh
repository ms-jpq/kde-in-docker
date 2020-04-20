#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid cat /usr/share/applications/org.kde.dolphin.desktop > /config/Desktop/dolphin.desktop
s6-setuidgid kid cat /usr/share/applications/org.kde.konsole.desktop > /config/Desktop/konsole.desktop
