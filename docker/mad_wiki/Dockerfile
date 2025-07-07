FROM php:8.1.8-fpm
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

VOLUME /ext

COPY init/mad_wiki/pukiwiki-1.5.4_utf8/ /var/www/html

COPY init/mad_wiki/pukiwiki.ini.php /var/www/html/
COPY init/mad_wiki/lib/file.php /var/www/html/lib/
COPY init/mad_wiki/attach.inc.php /var/www/html/plugin/

# spamフィルター導入
COPY init/mad_wiki/dns_get_ns.cache /var/www/html/
COPY init/mad_wiki/delegated-apnic-latest /var/www/html/
COPY init/mad_wiki/Net/ /var/www/html/Net
RUN chmod 777 /var/www/html/delegated-apnic-latest

RUN mv attach /ext/; chmod 777 /ext/attach/; ln -s /ext/attach/
RUN mv backup /ext/; chmod 777 /ext/backup/; ln -s /ext/backup/
RUN mv cache  /ext/;  chmod 777 /ext/cache/; ln -s /ext/cache/
RUN mv counter  /ext/;  chmod 777 /ext/counter/; ln -s /ext/counter/
RUN mv diff  /ext/;  chmod 777 /ext/diff/; ln -s /ext/diff/
RUN mv wiki  /ext/;  chmod 777 /ext/wiki/; ln -s /ext/wiki/

