FROM feixiao/cpp_base:1.1



RUN mkdir /Janus
# ADD sources.list /etc/apt/sources.list
# ADD resolv.conf /etc/resolv.conf

COPY janus-gateway-0.7.4.zip     /Janus/janus-gateway-0.7.4.zip
COPY libnice-0.1.16.tar.gz       /Janus/libnice-0.1.16.tar.gz
COPY libwebsockets-2.4.2.zip     /Janus/libwebsockets-2.4.2.zip
COPY libsrtp-2.2.0.tar.gz        /Janus/libsrtp-2.2.0.tar.gz

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


RUN cd /Janus && ls -al && unzip libwebsockets-2.4.2.zip && \
    cd libwebsockets-2.4.2 && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_C_FLAGS="-fpic" .. && \
    make && sudo make install


RUN cd /Janus && ls -al && tar -zxvf libsrtp-2.2.0.tar.gz && \
    cd libsrtp-2.2.0 && \
    ./configure --prefix=/usr --enable-openssl && \
    make shared_library && sudo make install


# Support SIP
RUN apt install -y libre-dev

RUN apt install -y libnice-dev libglib2.0-dev
RUN apt-get remove -y libnice-dev libnice10 && \
    apt-get update && \
    apt-get install -y gtk-doc-tools libgnutls28-dev libglib2.0-dev --force-yes && \
    apt-get install -y libglib2.0-0 --force-yes && \
    cd /Janus && tar -zxvf libnice-0.1.16.tar.gz && \
    cd libnice-0.1.16 && \
    bash autogen.sh && \
    ./configure --prefix=/usr && \
    make && sudo make install



RUN apt install nginx -y --force-yes


RUN cd /Janus  && unzip janus-gateway-0.7.4.zip && cd ./janus-gateway-0.7.4 && \
    sh autogen.sh &&  \ 
    ./configure --disable-rabbitmq --disable-mqtt && \
    make && make install && make configs && ldconfig

#COPY nginx.conf /usr/local/nginx/nginx.conf

CMD janus

