FROM debian:buster

ARG dbname=myDB
ARG dbuser=$MYSQL_USER
ARG dbpass=$MYSQL_PASSWORD
ARG dbhost=mariadb
ARG dbprefix=wp_

RUN apt update
RUN apt-get install php-fpm php-mysql vim curl -y
WORKDIR /var/www/html
COPY ./wordpress_config.sh /tmp/
RUN chmod +x /tmp/wordpress_config.sh
RUN /bin/bash /tmp/wordpress_config.sh

EXPOSE 9000

CMD tail -f