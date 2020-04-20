#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid cat /usr/share/applications/nautilus.desktop > $HOME/Desktop/nautilus.desktop
s6-setuidgid kid cat /usr/share/applications/org.kde.konsole.desktop > $HOME/Desktop/konsole.desktop
