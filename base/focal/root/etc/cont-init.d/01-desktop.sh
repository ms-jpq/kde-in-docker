#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid cat /usr/share/applications/org.kde.dolphin.desktop > $HOME/Desktop/dolphin.desktop
s6-setuidgid kid cat /usr/share/applications/org.kde.konsole.desktop > $HOME/Desktop/konsole.desktop
