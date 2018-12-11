FROM nginx:1.15.7-alpine
RUN rm -f /etc/nginx/conf.d/default.conf
COPY config.template /config.template
COPY start.sh /start.sh
EXPOSE 5000
CMD ["/bin/sh", "-e", "/start.sh"]
