FROM babanban/pukiwiki

COPY init/mad_wiki/pukiwiki.ini.php /var/www/
COPY init/mad_wiki/dns_get_ns.cache /var/www/
COPY init/mad_wiki/delegated-apnic-latest /var/www/
COPY init/mad_wiki/lib/ /var/www/lib
COPY init/mad_wiki/Net/ /var/www/Net
#COPY init/mad_wiki/attach.inc.php /var/www/plugin/
COPY init/mad_wiki/skin /var/www/skin

RUN chmod 777 /var/www/delegated-apnic-latest