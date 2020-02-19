#!/bin/bash

set -eu
set -o pipefail


docker tag "$1" msjpq/kde-vnc:buster

docker push msjpq/kde-vnc:buster
