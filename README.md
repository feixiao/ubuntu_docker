# Ubuntu_docker
using docker build ubuntu work platform

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
docker build ./ -t feixiao/cpp_build

# Launch
docker-compose up -d

docker run -dit feixiao/cpp_build /bin/bash
```

### janus_build
```shell
# build
docker build ./ -t feixiao/janus_build

docker run -dit feixiao/janus_build /bin/bash
```

### 参考资料
+ [非root用户没有权限使用docker](https://blog.csdn.net/ken1583096683/article/details/82813111)
+ [ERROR: Pool overlaps with other one on this address space](http://zizhixiaoshe.com/article/21.html)