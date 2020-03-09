## MediaServer镜像

### build

```shell
# build
docker build ./ -t feixiao/mediaserver:1.3

# Launch
docker-compose up -d

# docker容器运行必须有一个前台进程， 如果没有前台进程执行，容器认为空闲，就会自行退出
# 所以带 /bin/bash
docker run -dit --name="mediaserver"  \
    -p 10100:22  -p 10101-10110:10101-10110 \
    -v /home/frank/ms:/home/frank/volumes/ms \
    feixiao/mediaserver:1.3 
```

### 项目
```shell
https://github.com/feixiao/media-server-go-demo


```

