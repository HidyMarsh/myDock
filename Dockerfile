FROM alpine

RUN apk add --update --no-cache nginx
RUN apk add  php7 php7-fpm php7-opcache


COPY    nginx-docker-build/files/nginx.conf /etc/nginx/nginx.conf
COPY    nginx-docker-build/files/default.conf /etc/nginx/http.d/default.conf
COPY    nginx-docker-build/files/index.html /var/www/localhost/htdocs/index.html
COPY    nginx-docker-build/files/info.php /var/www/localhost/htdocs/info.php
COPY    nginx-docker-build/files/start.sh /etc/nginx/start.sh
RUN     chmod 775 /etc/nginx/start.sh


EXPOSE  80
ENTRYPOINT  /etc/nginx/start.sh