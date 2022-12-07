#!/bin/sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

sed -i -e 's/listen =.*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

wp core download --allow-root

# wp core config --dbname=myDB --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --dbprefix=wp_ --skip-check --allow-root

# wp core install --url="localhost" --title="My Site" --admin_user="$ADMIN_USER" --admin_password="$ADMIN_PASSWORD" --admin_email="zsarir@email.com" --allow-root --path=/var/www/html

# Utilisation de WP-CLI pour installer et gérer les thèmes WordPress
# wp theme activate twentyfifteen --allow-root
# wp theme install ultrabootstrap --activate --allow-root

