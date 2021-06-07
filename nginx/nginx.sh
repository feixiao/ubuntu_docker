#!/bin/bash 

export ENV=localhost
docker run --rm -p 8080:80  itd -p 443:443 \
    -v $PWD/nginx/${ENV}/nginx.conf:/etc/nginx/nginx.conf \
    -v $PWD/www/${ENV}:/usr/share/nginx/html    \
    -v $PWD/ssl/${ENV}:/ect/nginx/cert   \
    --name nginx nginx:mainline-alpine