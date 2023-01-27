#!/bin/sh

sed -i 's/#port                   = 3306/port = 3306/' 50-server.cnf
sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/' 50-server.cnf

echo "CREATE DATABASE myDB;" | mysql -u root

echo "USE myDB;" | mysql -u root

echo "GRANT ALL PRIVILEGES ON myDB.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"  | mysql -u root

echo "FLUSH PRIVILEGES;" | mysql -u root

echo "ALTER  USER 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" | mysql -u root

echo "FLUSH PRIVILEGES;" | mysql -u root -p$MYSQL_ROOT_PASSWORD

# mysqladmin -u admin -p version