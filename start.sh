#!/usr/bin/env bash
envsubst < nginx.template > nginx.conf && exec nginx -g 'daemon off;'
