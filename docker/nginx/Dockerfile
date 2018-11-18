FROM nginx:latest
RUN mkdir -p /usr/share/nginx/html
COPY ./html_contents/ /usr/share/nginx/html
COPY ./init/default.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
