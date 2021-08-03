## IMX8 编译镜像


#### 构建镜像
```shell
docker build -t android-build-env .
```

#### 运行
```shell
docker run -it -v ~/volume/imx8:/root android-build-env
```