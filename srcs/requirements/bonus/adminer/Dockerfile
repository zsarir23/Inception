FROM debian:buster

RUN apt update -y
RUN apt install wget -y && apt-get install apache2 php \
 libapache2-mod-php php-curl php-cli php-mysql php-gd mariadb-server -y

COPY ./adminer.sh /tmp/

CMD ["/bin/bash","/tmp/adminer.sh"]