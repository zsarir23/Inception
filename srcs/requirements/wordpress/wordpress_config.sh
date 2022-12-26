#!/bin/sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

sed -i -e 's/listen =.*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

wp --allow-root core download

wp core config --dbname=myDB --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --dbprefix=wp_ --allow-root --skip-check

wp --allow-root  core install --url="localhost" --title="My Site" --admin_user="$ADMIN_USER" --admin_password="$ADMIN_PASSWORD" --admin_email="zsarir@email.com"

# Utilisation de WP-CLI pour installer et gérer les thèmes WordPress
# wp theme activate twentyfifteen --allow-root
wp theme install ultrabootstrap --activate --allow-root

mkdir -p /run/php/
php-fpm7.3 -F

