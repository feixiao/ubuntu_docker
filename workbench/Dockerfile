FROM feixiao/cpp_build:1.5

LABEL maintainer="frank<feixiao2020@sina.com>"


# support golang 
ENV GOLANG_DOWNLOAD_URL https://dl.google.com/go/go1.23.1.linux-amd64.tar.gz
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz \
    && tar -C /usr/local -xzf golang.tar.gz \
    && rm -f golang.tar.gz

# 为了ssh登入可以直接使用ssh
ENV GOPATH /home/frank/gopath
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH" &&\
    echo "export GOROOT=/usr/local/go" >> /etc/profile && \
    echo "export GOPATH=/home/frank/gopath" >> /etc/profile  \
    echo "export GOPROXY=https://goproxy.cn" >> /etc/profile \
    echo "export PATH=/usr/local/go/bin:${PATH}" >> /etc/profile 

# add oh-my-shell
RUN apt update && apt install -y zsh git 

# root安装zsh
RUN wget https://gitee.com/Devkings/oh_my_zsh_install/raw/master/install.sh -O - | zsh || true 

# 切换用户
USER frank 
RUN wget https://gitee.com/Devkings/oh_my_zsh_install/raw/master/install.sh -O - | zsh || true 



# 切换用户(不切换回来，导致容器不能启动)
USER root 

# support Miniconda3
RUN wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-4.7.12.1-Linux-x86_64.sh  && mv Miniconda3-4.7.12.1-Linux-x86_64.sh Miniconda3-latest-Linux-x86_64.sh 
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && rm -rf Miniconda3-latest-Linux-x86_64.sh
RUN /opt/conda/bin/conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
RUN echo "export PATH=/opt/conda/bin:${PATH}" >> /etc/profile

RUN apt-get install -y gengetopt \
    libtool \
    automake \
    subversion \
    unzip \
    zip \
    lsof    


RUN apt-get install -y  ninja-build  libz-dev libpng-dev 

# support gstreamer
RUN apt-get install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-plugins-good



WORKDIR /home/frank
