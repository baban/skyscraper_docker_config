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

VOLUME /ext

COPY init/mad_wiki/pukiwiki-1.5.4_utf8/ /var/www/html

COPY init/mad_wiki/pukiwiki.ini.php /var/www/html/
COPY init/mad_wiki/attach.inc.php /var/www/html/plugin/
COPY init/mad_wiki/skin /var/www/html/skin/

# spamフィルター導入
#COPY init/mad_wiki/dns_get_ns.cache /var/www/html/
#COPY init/mad_wiki/delegated-apnic-latest /var/www/html/
#COPY init/mad_wiki/lib/ /var/www/html/lib
#COPY init/mad_wiki/Net/ /var/www/html/Net
#RUN chmod 777 /var/www/html/delegated-apnic-latest
