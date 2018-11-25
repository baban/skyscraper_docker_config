FROM nginx:latest
RUN mkdir -p /usr/share/nginx/html
COPY ./html_contents/ /usr/share/nginx/html
COPY ./init/default.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html

#RUN mkdir /var/cache/nginx/cache
#RUN chmod 777 /var/cache/nginx/cache
#RUN mkdir /var/cache/nginx_tmp
#RUN chmod 777 /var/cache/nginx_tmp
