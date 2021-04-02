## Nginx 镜像支持 https

```shell

docker pull nginx:mainline-alpine

mkdir -p nginx/{aliyun,localhost} www/{aliyun,localhost} ssl/{aliyun,localhost}


export ENV=localhost
docker run --rm -p 8080:80  -p 8081:443 \
    -v $PWD/nginx/${ENV}/nginx.conf:/etc/nginx/nginx.conf \
    -v $PWD/www/${ENV}:/usr/share/nginx/html    \
    -v $PWD/ssl/${ENV}:/ect/nginx/cert   \
    --name nginx nginx:mainline-alpine

# 测试
curl 127.0.0.1:8080
curl https://127.0.0.1:8081
```

#### 参考资料

- [《给 Docker 中的 Nginx 搭建 HTTPS 环境》](https://zhuanlan.zhihu.com/p/43375158)
