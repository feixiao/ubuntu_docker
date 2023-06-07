## 使用Docker编译AOSP

### 构建镜像
```shell
docker build ./ -t feixiao/aosp:1.0
```

#### 运行
```shell
docker run --restart=always -dit --name=aosp \
    -p 10022:22 \
    -v ~/volume/aosp:/home/frank/workspace feixiao/aosp:1.0

# ssh的用户名和密码 frank 1

```

### 下载源码



### 参考资料
+ [《使用Docker编译Android》](https://blog.51cto.com/u_847102/5270081)