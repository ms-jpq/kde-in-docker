#!/usr/bin/with-contenv sh

envsubst '${PATH_PREFIX}' < /etc/nginx/nginx.conf
