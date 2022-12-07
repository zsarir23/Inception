#!/bin/sh

# sed -i 's/#port                   = 3306/port = 3306/' 50-server.cnf
# sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/' 50-server.cnf

echo "CREATE DATABASE myDB;" | mysql -u root

echo "GRANT ALL ON *.* TO '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mysql -u root

echo "GRANT ALL PRIVILEGES ON myDB.* TO '$MYSQL_USER'@localhost IDENTIFIED BY '$MYSQL_PASSWORD';"  | mysql -u root

echo "FLUSH PRIVILEGES;" | mysql -u root


# mysqladmin -u admin -p version