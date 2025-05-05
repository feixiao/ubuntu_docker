FROM ubuntu:24.04


LABEL maintainer="frank<feixiao2020@sina.com>"


ADD sources.list /etc/apt/sources.list

RUN apt update && apt-get upgrade -y && apt install -y \
    apt-utils gcc g++  cmake build-essential  ninja-build 

RUN apt install -y vim curl gdb git wget 

