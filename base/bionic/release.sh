#!/bin/bash

set -eu
set -o pipefail


docker tag "$1" msjpq/kde-vnc:bionic

docker push msjpq/kde-vnc:bionic
