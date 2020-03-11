FROM feixiao/cpp_build:1.5

LABEL maintainer="frank<feixiao2020@sina.com>"

COPY libsrtp-2.2.0.tar.gz        /tmp/libsrtp-2.2.0.tar.gz

RUN apt-get install -y  libxmlrpc-c++8-dev \
    libgsm1-dev libspeex-dev libopus-dev libx264-dev libvpx-dev \
    libmp4v2-dev  libjpeg-dev  libz-dev libpng-dev 

RUN apt update && apt install  -y  ninja-build    libgcrypt11-dev libssl-dev 

RUN apt install -y libavformat-dev libavcodec-dev libswresample-dev libswscale-dev libavutil-dev libavresample-dev

RUN apt-get install -y \
    libgstreamer1.0-0 gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good  gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools \
    libgstreamer-plugins-base1.0-dev libgstreamer1.0-0 \
    gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools \
    gstreamer-plugins-base1.0-dev  


RUN cd /tmp && ls -al && tar -zxvf libsrtp-2.2.0.tar.gz && \
    cd libsrtp-2.2.0 && \
    ./configure --prefix=/usr/local --enable-openssl && \
    make  && make install

# mp4v2
# RUN git clone https://github.com/medooze/mp4v2.git && cd mp4v2 && autoreconf -fiv && \
#     ./configure && make -j 4 && make install


# support golang 
ENV GOLANG_VERSION 1.13.8
ENV GOLANG_DOWNLOAD_URL https://dl.google.com/go/go1.13.8.linux-amd64.tar.gz
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz \
    && tar -C /usr/local -xzf golang.tar.gz \
    && rm -f golang.tar.gz
ENV GOPROXY=https://goproxy.cn
ENV GOSUMDB="sum.golang.google.cn"
ENV GOPATH=/home/frank/ms/gopath
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH" &&\
    echo "export GOROOT=/usr/local/go" >> /etc/profile && \
    echo "export GOPATH=/home/frank/gopath" >> /etc/profile  \
    echo "export PATH=/usr/local/go/bin:${PATH}" >> /etc/profile  
