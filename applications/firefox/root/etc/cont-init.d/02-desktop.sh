#!/bin/bash

set -eu
set -o pipefail

s6-setuidgid kid cat /usr/share/applications/firefox.desktop > /config/Desktop/firefox.desktop
