FROM nginx:latest

RUN mkdir -p /usr/share/nginx/html

COPY init/mad_wiki/pukiwiki-1.5.4_utf8/ /usr/share/nginx/html
COPY init/mad_wiki_nginx/default.conf /etc/nginx/conf.d
WORKDIR /usr/share/nginx/html
