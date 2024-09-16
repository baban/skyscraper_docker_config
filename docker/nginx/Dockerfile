FROM nginx:latest

RUN mkdir -p /usr/share/nginx/html

COPY init/nginx/default.conf /etc/nginx/conf.d
WORKDIR /usr/share/nginx/html
