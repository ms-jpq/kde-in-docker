#!/usr/bin/with-contenv bash

set -eu
set -o pipefail

IMAGE="msjpq/adobe-acrobat-vnc:latest"

cd "$(dirname "$0")"
docker build -t "$IMAGE" .

if [[ $# -gt 0 ]]
then
  docker push "$IMAGE"
fi
