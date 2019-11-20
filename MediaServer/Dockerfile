FROM feixiao/cpp_base:1.1

LABEL maintainer="frank<feixiao2020@sina.com>"

RUN apt-get update && apt-get upgrade -y && apt install -y libxmlrpc-c++8-dev \
    libgsm1-dev libspeex-dev libopus-dev \
    libavresample-dev libx264-dev libvpx-dev \
    libswscale-dev libavformat-dev libmp4v2-dev \
    libgcrypt11-dev libssl1.0-dev libjpeg-dev   

RUN apt install libsrtp2-dev libz-dev libpng-dev libssl1.0-dev

RUN apt install -y ninja-build  
