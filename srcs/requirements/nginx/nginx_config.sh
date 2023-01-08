#!/bin/bash

apt-get update
apt-get -y install openssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt \
	 -subj "/C=MA/ST=St/L=Lo/O=in/OU=or/CN=Co"

		###SSL:
sed -i "s/listen 80 default_server;/listen 443 ssl default_server;/" 															/etc/nginx/sites-enabled/default
sed -i "s/listen \[::\]:80 default_server;/listen \[::\]:443 ssl default_server;/" 												/etc/nginx/sites-enabled/default

sed -i "24i		ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;" 																					/etc/nginx/sites-enabled/default
sed -i "25i		ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key ;" 																				/etc/nginx/sites-enabled/default
sed -i '27i		# TLS 1.3 only'																									/etc/nginx/sites-enabled/default
sed -i '28i		ssl_protocols TLSv1.3;' 																						/etc/nginx/sites-enabled/default

		###wordpress:
sed -i "s/index index.html index.htm index.nginx-debian.html;/index index.php index.html index.htm index.nginx-debian.html;/"	/etc/nginx/sites-enabled/default
sed -i "s/server_name _;/server_name zsarir.42.fr;/" 																				/etc/nginx/sites-enabled/default
sed -i "57i location ~ \\.php$ {" 																								/etc/nginx/sites-enabled/default
sed -i "58i      include snippets/fastcgi-php.conf;" 																			/etc/nginx/sites-enabled/default
sed -i "59i       fastcgi_pass wordpress:9000;" 																				/etc/nginx/sites-enabled/default
sed -i '60i		}' 																												/etc/nginx/sites-enabled/default


# nginx -t

# service nginx reload