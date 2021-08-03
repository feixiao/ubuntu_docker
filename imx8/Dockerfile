#FROM gradle:jdk8
FROM ubuntu:18.04

# Setup build directory and root user
WORKDIR /android-build
USER root
 
# Install dependencies
RUN apt-get -y update && apt-get install -y --no-install-recommends \
    software-properties-common \
    build-essential \
    file \
    apt-utils \
    git \
    vim \
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
    rsync \
    gpg-agent \
    ssh \
    python2.7
    # python3.8


RUN cp -f /usr/bin/python2.7 /usr/bin/python
RUN apt-get purge -y --auto-remove \
    && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

RUN curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo > /usr/bin/repo && \
    chmod a+x /usr/bin/repo

RUN echo "export REPO_URL='https://mirrors.bfsu.edu.cn/git/git-repo'" >> /etc/profile



