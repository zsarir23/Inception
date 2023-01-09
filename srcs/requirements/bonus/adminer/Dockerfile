FROM debian:buster

RUN apt update -y
RUN apt install wget -y && apt-get install apache2 php \
 libapache2-mod-php php-curl php-cli php-mysql php-gd mariadb-server -y
# RUN mkdir /var/www/html/Adminer
# WORKDIR /var/www/html/Adminer
# RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php && mv adminer-4.8.1.php adminer.php \
# 	&& chown -R www-data:www-data /var/www/html/adminer.php \
# 	&& chmod 755 /var/www/html/adminer.php

# CMD ["php", "-S", "0.0.0.0:8080" ,"-t" ,"/var/www/html/Adminer"]
COPY ./adminer.sh /tmp/
CMD ["/bin/bash","/tmp/adminer.sh"]