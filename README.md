# Ubuntu_docker

构建日常使用的镜像。

- [现成镜像的部署](https://github.com/feixiao/shell/tree/master/docker)



### 基于 Ubuntu24.04 打造自己的工作平台

- build
  docker build ./ -t feixiao/workbech:1.7

- Launch

  ```shell
  docker run --restart=always -dit --name=wk \
      -p 10000:22  -p 10001-10010:10001-10010 \
      -v workbech:/home/frank/workspace feixiao/workbench:1.7
  ```

### Janus 部署

    # /usr/local/etc/janus
    # /usr/local/lib/janus/transports
    # /usr/local/lib/janus/plugins

    docker run --net=host \
        -v /opt/janus/conf:/usr/local/etc/janus \
        --name="janus0.7.5"  \
        -itd -t feixiao/janus-webrtc-gateway-docker:0.7.5

### Janus 开发环境

    docker run --net=host -dit \
        -v /home/frank/docker/data/janus_ubuntu_build:/workspace \
        --name="janus" feixiao/janus_ubuntu_build:1.0

### 参考资料

- [非 root 用户没有权限使用 docker](https://blog.csdn.net/ken1583096683/article/details/82813111)
- [ERROR: Pool overlaps with other one on this address space](http://zizhixiaoshe.com/article/21.html)
- [《如何解决 docker volume 共享文件下项目访问速度极慢?》](https://segmentfault.com/q/1010000011417846)
- [《在 docker 容器中生成 core dump 文件》](https://blog.csdn.net/u013774469/article/details/82427546)
- [《跨平台构建 Docker 镜像新姿势 x86、arm 一把梭》](https://mp.weixin.qq.com/s/okTP4VNXKDvaCIUnJ3hQDQ)
- [《gcr.io，ghcr.io，k8s.gcr.io，quay.io 国内镜像加速服务整理分享》](https://www.nenufm.com/dorthl/291/)
- [《Windows系统安装WSL，并安装docker服务》](https://blog.csdn.net/xiaohuaidan007/article/details/130160286)