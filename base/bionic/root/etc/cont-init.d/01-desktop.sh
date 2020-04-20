#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid cat /usr/share/applications/nautilus.desktop > /config/Desktop/nautilus.desktop
s6-setuidgid kid cat /usr/share/applications/org.kde.konsole.desktop > /config/Desktop/konsole.desktop
