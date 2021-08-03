#FROM gradle:jdk8
FROM ubuntu:18.04

# Setup build directory and root user
WORKDIR /android-build
USER root
 
# Install dependencies
RUN apt-get -y update && apt-get install -y --no-install-recommends \
    build-essential \
    file \
    apt-utils \
    git \
    # repo \
    flex \
    bison \
    gperf \
    zip \
    curl \
    #zlib1g-dev \
    gcc-multilib \
    g++-multilib \
    libc6-dev-i386 \
    x11proto-core-dev \
    libx11-dev \
    lib32z-dev \
    libgl1-mesa-dev \
    libxml2-utils \
    xsltproc \
    unzip \
    lib32ncurses5-dev \
    uuid \
    uuid-dev \
    zlib1g-dev \
    liblz-dev \
    liblzo2-2 \
    liblzo2-dev \
    lzop \
    u-boot-tools \
    mtd-utils \
    # android-tools-fsutils \
    openjdk-8-jdk \
    device-tree-compiler \
    gdisk \
    m4 \
    libz-dev \
    bc \
    rsync 


RUN apt-get purge -y --auto-remove \
    && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*


RUN git config --global user.email "feixiao2020@sina.com" && \
    git config --global user.name "frank" && \
    git config --global http.sslVerify false && \
    git config --global http.postBuffer 1048576000 

RUN mkdir bin && \
    curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo > bin/repo && \
    chmod a+x bin/repo

RUN echo "export PATH=${PATH}:/android-build/bin" >> /etc/profile
RUN echo "export REPO_URL='https://mirrors.bfsu.edu.cn/git/git-repo'" >> /etc/profile



