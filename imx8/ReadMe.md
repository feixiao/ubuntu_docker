## IMX8 编译镜像


#### 构建镜像
```shell
docker build -t android-build-env .
```

#### 运行
```shell
docker run -it -v ~/volume/imx8:/root android-build-env

# 设置git
git config --global user.email "feixiao2020@sina.com" 
git config --global user.name "frank" 
git config --global http.sslVerify false 
git config --global http.postBuffer 1048576000 
```

#### 下载代码
```shell
cd /root/imx-android-10.0.0_2.5.0/

source imx_android_setup.sh 

# 等待失败的时候修改aosp代码下载路径

vim android_build/.repo/manifests/imx-android-10.0.0_2.5.0.xml 

<remote  name="aosp" fetch="https://mirrors.bfsu.edu.cn/git/AOSP/" review="/" />

# 继续下载
source imx_android_setup.sh 

```