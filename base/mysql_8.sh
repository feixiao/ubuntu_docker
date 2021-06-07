#!/bin/bash 

# mysql -h 127.0.0.1 -P 3306 -u root -p

docker run --restart=always -itd --name mysql8.0\
    -p 3307:3307 -e MYSQL_ROOT_PASSWORD=123456 \
    -e MYSQL_USER=frank -e MYSQL_PASSWORD=123456 \
    -v ~/volumes/mysql_8:/var/lib/mysql mysql:8.0 \
    --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci