FROM nginxinc/nginx-unprivileged:1.16
USER 0
RUN rm -f /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

RUN mkdir /nginx
COPY nginx.template /nginx/nginx.template
COPY start.sh /nginx/start.sh
RUN chmod 777 -R /nginx
USER 1001
WORKDIR /nginx
EXPOSE 5000
CMD ["/bin/sh", "-e", "start.sh"]
