# Ubuntu_docker

构建日常使用的镜像。

- [现成镜像的部署](https://github.com/feixiao/shell/tree/master/docker)



#### 运行
```shell
docker run --platform linux/amd64 -p 60022:22 \
    --add-host host.docker.internal:host-gateway \
    --name="workbench_2504" -v workbench:/home/frank/workspace \
    -itd -t feixiao/workbench_2504:1.0

# Docker 提供了一个特殊域名 host.docker.internal，指向宿主机的 IP
```

### 参考资料

- [非 root 用户没有权限使用 docker](https://blog.csdn.net/ken1583096683/article/details/82813111)
- [ERROR: Pool overlaps with other one on this address space](http://zizhixiaoshe.com/article/21.html)
- [《如何解决 docker volume 共享文件下项目访问速度极慢?》](https://segmentfault.com/q/1010000011417846)
- [《在 docker 容器中生成 core dump 文件》](https://blog.csdn.net/u013774469/article/details/82427546)
- [《跨平台构建 Docker 镜像新姿势 x86、arm 一把梭》](https://mp.weixin.qq.com/s/okTP4VNXKDvaCIUnJ3hQDQ)
- [《gcr.io，ghcr.io，k8s.gcr.io，quay.io 国内镜像加速服务整理分享》](https://www.nenufm.com/dorthl/291/)
- [《Windows系统安装WSL，并安装docker服务》](https://blog.csdn.net/xiaohuaidan007/article/details/130160286)