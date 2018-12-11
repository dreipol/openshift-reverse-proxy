envsubst < /config.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'
