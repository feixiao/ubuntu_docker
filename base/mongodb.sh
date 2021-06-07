#!/bin/bash

docker run --name mongo \
        -v ~/volumes/mongogdb/datadir:/data/db \
        -e MONGO_INITDB_ROOT_USERNAME=frank \
        -e MONGO_INITDB_ROOT_PASSWORD=123456 \
        -d mongo:4.4.1