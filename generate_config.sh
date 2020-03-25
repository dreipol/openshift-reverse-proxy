#!/usr/bin/env bash
set -e
envsubst '${SERVICE},${STATICFILES_LOCATION},${MEDIAFILES_LOCATION},${SECUREFILES_LOCATION},${MINIO_HOST},${MINIO_PORT},${BUCKET_NAME}' < /nginx/nginx.template > /nginx/nginx.conf
