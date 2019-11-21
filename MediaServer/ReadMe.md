## MediaServer镜像

### build

```shell
# build
docker build ./ -t feixiao/mediaserver:1.1

# Launch
docker-compose up -d

# docker容器运行必须有一个前台进程， 如果没有前台进程执行，容器认为空闲，就会自行退出
# 所以带 /bin/bash
docker run -dit --net=host --name="mediaserver"  \
    -v /home/frank/wk_webrtc:/home/frank/wk_webrtc \
    feixiao/mediaserver:1.1 /bin/bash
```