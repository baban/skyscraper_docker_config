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

FROM nginx:latest
LABEL org.opencontainers.image.authors="babanba-n <babanba.n@gmail.com>" \
    org.opencontainers.image.source="https://github.com/baban/skyscraper_docker_config"

RUN apt update
RUN apt-get install -y php php-cgi

COPY --from=builder /pukiwiki /var/www

VOLUME /ext
EXPOSE 80

COPY init/mad_wiki/pukiwiki.ini.php /var/www/
COPY init/mad_wiki/attach.inc.php /var/www/plugin/
COPY init/mad_wiki/skin /var/www/skin

# spamフィルター導入
COPY init/mad_wiki/dns_get_ns.cache /var/www/
COPY init/mad_wiki/delegated-apnic-latest /var/www/
COPY init/mad_wiki/lib/ /var/www/lib
COPY init/mad_wiki/Net/ /var/www/Net

RUN chmod 777 /var/www/delegated-apnic-latest

