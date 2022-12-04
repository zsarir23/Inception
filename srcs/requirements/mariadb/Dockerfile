FROM debian:buster

ARG MYSQL_ROOT_PASSWORD=1234
ARG MYSQL_USER=zsarir
ARG MYSQL_PASSWORD=1234

RUN apt update
RUN apt install mariadb-server -y

COPY ./creat_user.sh /etc/mysql

RUN service mysql start && /bin/sh /etc/mysql/creat_user.sh

EXPOSE 3306

CMD [ "mysqld_safe" ]

# RUN tail -f 