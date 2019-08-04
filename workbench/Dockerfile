FROM feixiao/cpp_build:1.1

LABEL maintainer="frank<feixiao2020@sina.com>"


# support golang 
ENV GOLANG_VERSION 1.12.7
ENV GOLANG_DOWNLOAD_URL https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz \
    && tar -C /usr/local -xzf golang.tar.gz \
    && rm -f golang.tar.gz

# 为了ssh登入可以直接使用ssh
ENV GOPATH /home/frank/gopath
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH" &&\
    echo "export GOROOT=/usr/local/go" >> /etc/profile && \
    echo "export GOPATH=/home/frank/gopath" >> /etc/profile  \
    echo "export PATH=/usr/local/go/bin:${PATH}" >> /etc/profile  

# add oh-my-shell
RUN apt install -y zsh git 

# root安装zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true 

# 切换用户
USER frank 
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true 


# 切换用户(不切换回来，导致容器不能启动)
USER root 

WORKDIR $GOPATH
