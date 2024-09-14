FROM busybox:1.36 AS builder

ARG dir="77082"
ARG name="pukiwiki-1.5.4_utf8"

RUN wget "http://iij.dl.osdn.jp/pukiwiki/$dir/$name.zip"
RUN unzip "$name.zip"
RUN mv ${name} pukiwiki

WORKDIR /pukiwiki
RUN rm -f *.txt *.zip
RUN mkdir -p .orig/conf .orig/data
RUN for i in `find * -maxdepth 0 -name '*.ini.php'`; do mv $i .orig/conf/; ln -s /ext/conf/$i; done
RUN for i in `find * -maxdepth 0 -type d -perm 2777`; do mv $i .orig/data/; ln -s /ext/data/$i; done

FROM php:8.1.18-fpm
LABEL org.opencontainers.image.authors="babanba-n <babanba.n@gmail.com>" \
    org.opencontainers.image.source="https://github.com/baban/skyscraper_docker_config"

RUN apt update
# パッケージやPHPの拡張モジュールをインストールするコマンド　を実行
RUN apt-get update && apt-get install -y \
	git \
	curl \
	zip \
	unzip \
    && docker-php-ext-install pdo_mysql

# COPY --from=builder /pukiwiki /var/www/
#WORKDIR /var/www

#EXPOSE 80

# COPY init/mad_wiki/etc/php/8.2/fpm/pool.d/www.conf /etc/php/8.2/fpm/pool.d/www.conf
#COPY init/mad_wiki/pukiwiki.ini.php /var/www/html/
#COPY init/mad_wiki/attach.inc.php /var/www/html/plugin/
#COPY init/mad_wiki/skin /var/www/html/skin/

# spamフィルター導入
#COPY init/mad_wiki/dns_get_ns.cache /var/www/html/
#COPY init/mad_wiki/delegated-apnic-latest /var/www/html/
#COPY init/mad_wiki/lib/ /var/www/html/lib
#COPY init/mad_wiki/Net/ /var/www/html/Net
#RUN chmod 777 /var/www/html/delegated-apnic-latest
# RUN chmod +x /usr/share/nginx/html/index.php

RUN echo '<?php phpinfo(); ?>' > /var/www/html/index.php
RUN echo '<?php phpinfo(); ?>' > /var/www/index.php