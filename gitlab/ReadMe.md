

#### 获取镜像
```
docker pull gitlab/gitlab-ce:14.1.6-ce.0
```

#### 运行gitlab镜像
```
export GITLAB_PATH=~/volumes/gitlab
docker run -d  -p 10443:443 -p 10080:80 -p 2222:22 \
    --name gitlab --restart always \
    -v ${GITLAB_PATH}/config:/etc/gitlab \
    -v ${GITLAB_PATH}/logs:/var/log/gitlab \
    -v ${GITLAB_PATH}/data:/var/opt/gitlab \
    -v /etc/localtime:/etc/localtime \
    gitlab/gitlab-ce:14.1.6-ce.0
```

#### 配置
```
vim ${GITLAB_PATH}/config/gitlab.rb

# 配置http协议所使用的访问地址,不加端口号默认为80
external_url 'http://mine.gitlab.com'

# 配置ssh协议所使用的访问地址和端口
gitlab_rails['gitlab_ssh_host'] = 'mine.gitlab.com'
gitlab_rails['gitlab_shell_ssh_port'] = 2222 # 此端口是run时22端口映射的222端口
```

#### 重启
```
docker restart gitlab
docker exec -it gitlab gitlab-ctl reconfigure 

# 查看管理密码（root账号的登入密码）
${GITLAB_PATH}/config/initial_root_password
```