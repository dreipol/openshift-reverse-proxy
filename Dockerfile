FROM nginx:1.15.7-alpine
RUN rm -f /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

RUN mkdir /nginx
COPY nginx.template /nginx/nginx.template
COPY start.sh /nginx/start.sh
WORKDIR /nginx
EXPOSE 5000
CMD ["/bin/sh", "-e", "start.sh"]
