# Ubuntu_docker
构建基于Docker的Linux C++开发环境。


### cpp_base

```shell
# build
docker build ./ -t feixiao/cpp_base

# Launch
docker-compose up -d

# docker容器运行必须有一个前台进程， 如果没有前台进程执行，容器认为空闲，就会自行退出
# 所以带 /bin/bash
docker run -dit feixiao/cpp_base /bin/bash
```

### cpp_build
```shell
# build
docker build ./ -t feixiao/cpp_build:1.5


# Launch
docker-compose up -d

docker run --rm -dit -p 60022:22 --name="cpp_build" feixiao/cpp_build:1.5

```


### 基于Ubuntu18.04 打造自己的工作平台
+ build
docker build ./ -t feixiao/workbech:1.7

+ Launch
    ```shell

    # OSX
    docker run --restart=always -dit --name=wk \
        -p 10000:22  -p 10001-10010:10001-10010 \
        -v /Users/frank/volume/workspace:/home/frank/workspace feixiao/workbench:1.7

    # Ubuntu
    docker run --restart=always -dit --name=wk \
        -p 10000:22  -p 10001-10010:10001-10010 \
        -v /home/frank/volumes/workbench:/home/frank/workspace feixiao/workbench:1.7  
    ```

### Janus部署
    # /usr/local/etc/janus
    # /usr/local/lib/janus/transports
    # /usr/local/lib/janus/plugins
    
    docker run --net=host \
        -v /opt/janus/conf:/usr/local/etc/janus \
        --name="janus0.7.5"  \
        -itd -t feixiao/janus-webrtc-gateway-docker:0.7.5

### Janus开发环境

    docker run --net=host -dit \
        -v /home/frank/docker/data/janus_ubuntu_build:/workspace \
        --name="janus" feixiao/janus_ubuntu_build:1.0


### 参考资料
+ [非root用户没有权限使用docker](https://blog.csdn.net/ken1583096683/article/details/82813111)
+ [ERROR: Pool overlaps with other one on this address space](http://zizhixiaoshe.com/article/21.html)
+ [《如何解决docker volume 共享文件下项目访问速度极慢?》](https://segmentfault.com/q/1010000011417846)
+ [《在docker容器中生成core dump文件》](https://blog.csdn.net/u013774469/article/details/82427546)