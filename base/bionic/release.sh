#!/bin/bash

set -eu
set -o pipefail

IMAGE="msjpq/kde-vnc:bionic"

cd "$(dirname "$0")"
docker build -t "$IMAGE" .

if [[ $# -gt 0 ]]
then
  docker push "$IMAGE"
fi
