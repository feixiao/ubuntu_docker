#!/bin/bash 

# doc https://scylla.wildcat.io/zh/latest/index.html

docker run  --restart=always -d -p 8899:8899 -p 8081:8081 -v ~/scylla:/var/www/scylla --name scylla wildcat/scylla:latest
