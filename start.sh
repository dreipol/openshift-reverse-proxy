#!/usr/bin/env bash
set -e
./generate_config.sh
nginx -g 'daemon off;'
