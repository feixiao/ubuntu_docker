FROM feixiao/cpp_build:1.2

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
RUN apt update && apt install -y zsh git 

# root安装zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true 

# 切换用户
USER frank 
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true 

# 切换用户(不切换回来，导致容器不能启动)
USER root 


# 编译Janus
RUN mkdir /wk
# COPY libnice-0.1.16.tar.gz       /wk/libnice-0.1.16.tar.gz
COPY libwebsockets-2.4.2.zip     /wk/libwebsockets-2.4.2.zip
COPY libsrtp-2.2.0.tar.gz        /wk/libsrtp-2.2.0.tar.gz

RUN apt-get -y update && apt-get install -y libmicrohttpd-dev \
    libjansson-dev \
    libnice-dev \
    libssl-dev \
    libsrtp-dev \
    libsofia-sip-ua-dev \
    libglib2.0-dev \
    libopus-dev \
    libogg-dev \
    libini-config-dev \
    libcollection-dev \
    libconfig-dev \
    pkg-config \
    gengetopt \
    libtool \
    automake \
    build-essential \
    subversion \
    git \
    cmake \
    unzip \
    zip \
    lsof wget vim sudo  --force-yes

 # If you want to use the openssl instead of boringssl
RUN apt-get update -y && apt-get install -y libssl-dev --force-yes


RUN cd /wk && ls -al && unzip libwebsockets-2.4.2.zip && \
    cd libwebsockets-2.4.2 && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_C_FLAGS="-fpic" .. && \
    make && sudo make install


RUN cd /wk && ls -al && tar -zxvf libsrtp-2.2.0.tar.gz && \
    cd libsrtp-2.2.0 && \
    ./configure --prefix=/usr --enable-openssl && \
    make shared_library && sudo make install 

# Support SIP
RUN apt install -y libre-dev

# 结束 Janus

# mediaserver start
RUN apt-get update && apt-get install -y  libxmlrpc-c++8-dev \
    libgsm1-dev libspeex-dev libopus-dev \
    libavresample-dev libx264-dev libvpx-dev \
    libswscale-dev libavformat-dev libmp4v2-dev libgcrypt11-dev libjpeg-dev  --fix-missing

RUN apt-get install -y  ninja-build  libz-dev libpng-dev 

# mediaserver stop


WORKDIR /home/frank
