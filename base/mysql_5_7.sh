#!/bin/bash 

# rpm -ivh https://repo.mysql.com//mysql57-community-release-el7-11.noarch.rpm
# yum search mysql-community
# yum install mysql-community-client.x86_64 -y
# mysql -h 127.0.0.1 -P 3306 -u root -p

docker run --restart=always -itd --name mysql5.7 \
    -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 \
    -e MYSQL_USER=frank -e MYSQL_PASSWORD=123456 \
    -v ~/volumes/mysql:/var/lib/mysql mysql:5.7 \
    --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci