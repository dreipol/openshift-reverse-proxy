FROM nginxinc/nginx-unprivileged:1.15.12
USER 0
RUN rm -f /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

RUN mkdir /nginx
COPY nginx.template start.sh test.sh generate_config.sh /nginx/
RUN chmod 777 -R /nginx
USER 1001
WORKDIR /nginx
EXPOSE 5000
CMD ["/bin/sh", "-e", "start.sh"]
