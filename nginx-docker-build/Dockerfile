FROM alpine

RUN apk add --update --no-cache nginx
RUN apk add  php7 php7-fpm php7-opcache


COPY    files/nginx.conf /etc/nginx/nginx.conf
COPY    files/default.conf /etc/nginx/http.d/default.conf
COPY    files/index.html /var/www/localhost/htdocs/index.html
COPY    files/info.php /var/www/localhost/htdocs/info.php
COPY    files/start.sh /etc/nginx/start.sh
RUN     chmod 775 /etc/nginx/start.sh


EXPOSE  80
ENTRYPOINT  /etc/nginx/start.sh