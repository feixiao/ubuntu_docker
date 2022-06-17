## 使用Docker编译AOSP

### 构建镜像
```shell
docker build ./ -t feixiao/aosp:1.0
```

#### 运行
```shell
# OSX
docker run --restart=always -dit --name=wk \
    -p 10022:22 \
    -v ~/volume/aosp:/home/frank/workspace feixiao/aosp:1.0
```

### 下载源码