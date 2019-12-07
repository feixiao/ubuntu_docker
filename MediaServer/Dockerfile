FROM feixiao/janus_ubuntu_build:1.0

LABEL maintainer="frank<feixiao2020@sina.com>"

RUN apt-get update && apt-get install -y  libxmlrpc-c++8-dev \
    libgsm1-dev libspeex-dev libopus-dev \
    libavresample-dev libx264-dev libvpx-dev \
    libswscale-dev libavformat-dev libmp4v2-dev libgcrypt11-dev libjpeg-dev  --fix-missing

RUN apt-get install -y  ninja-build  libz-dev libpng-dev 

RUN apt-get install -y \
    libgstreamer1.0-0 gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good  gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools \
    libgstreamer-plugins-base1.0-dev libgstreamer1.0-0 \
    gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools \
    gstreamer-plugins-base1.0-dev  

# support golang 
ENV GOLANG_VERSION 1.13.4
ENV GOLANG_DOWNLOAD_URL https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz \
    && tar -C /usr/local -xzf golang.tar.gz \
    && rm -f golang.tar.gz
ENV GOPROXY=https://goproxy.cn
ENV GOPATH /home/frank/gopath
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH" &&\
    echo "export GOROOT=/usr/local/go" >> /etc/profile && \
    echo "export GOPATH=/home/frank/gopath" >> /etc/profile  \
    echo "export PATH=/usr/local/go/bin:${PATH}" >> /etc/profile  

