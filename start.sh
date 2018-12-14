#!/usr/bin/env bash
envsubst '${SERVICE},${STATICFILES_LOCATION},${MEDIAFILES_LOCATION},${MINIO_HOST},${MINIO_PORT},${BUCKET_NAME}' < /nginx/nginx.template > /nginx/nginx.conf && exec nginx -g 'daemon off;'
