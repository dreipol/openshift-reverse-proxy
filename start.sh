#!/usr/bin/env bash
envsubst < /nginx/nginx.template > /nginx/nginx.conf && exec nginx -g 'daemon off;'
