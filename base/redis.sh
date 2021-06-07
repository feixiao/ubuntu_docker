#!/bin/bash 

docker run -itd --restart=always --name redis -p 6379:6379 redis:4.0.14