#!/bin/sh

cd /var/www/html/

wget https://www.adminer.org/latest.php -O adminer.php 

chown -R www-data:www-data /var/www/html/adminer.php

chmod 755 /var/www/html/adminer.php

php -S 0.0.0.0:8080 -t /var/www/html/