FROM debian:buster

ARG MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
ARG MYSQL_USER=$MYSQL_USER
ARG MYSQL_PASSWORD=$MYSQL_PASSWORD

RUN apt update
RUN apt install mariadb-server -y

WORKDIR /etc/mysql/mariadb.conf.d

COPY ./mariadb_config.sh /etc/mysql

RUN service mysql start && /bin/sh /etc/mysql/mariadb_config.sh

EXPOSE 3306

CMD [ "mysqld_safe" ]
