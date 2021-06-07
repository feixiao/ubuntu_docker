#!/bin/bash

docker run -d \
    --restart=always \
    -p 2181:2181 \
    -v ~/volumes/zookeeper/data/:/data/ \
    --name=zookeeper zookeeper:3.4.10