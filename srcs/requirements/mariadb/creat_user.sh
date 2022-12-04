#!/bin/sh

echo "GRANT ALL ON *.* TO '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mysql

echo "FLUSH PRIVILEGES;" | mysql

# mysqladmin -u admin -p version