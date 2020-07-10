## 基于Ubuntu 20.04的CPP工作平台

#### 构建
```shell
docker build ./ -t feixiao/cpp_build_20:1.0
```

#### 运行
```shell
    docker run --restart=always -dit --name=cpp_build_20 \
        -p 11000:22 \
        -v ~/volume/cpp_build_20:/home/frank/workspace feixiao/cpp_build_20:1.0
```

####  推送到docker hub
```shell
docker push  feixiao/cpp_build_20:1.0
```