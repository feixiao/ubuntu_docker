#!/bin/bash 

export GITLAB_PATH=~/volume/gitlab
docker run -d  -p 10443:443 -p 10080:80 -p 2222:22 \
    --name gitlab --restart always \
    --platform linux/amd64 \
    -v ${GITLAB_PATH}/config:/etc/gitlab \
    -v ${GITLAB_PATH}/logs:/var/log/gitlab \
    -v ${GITLAB_PATH}/data:/var/opt/gitlab \
    -v /etc/localtime:/etc/localtime \
    gitlab/gitlab-ce:15.1.2-ce.0