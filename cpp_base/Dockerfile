FROM ubuntu:18.04


LABEL maintainer="frank<feixiao2020@sina.com>"


ADD sources.list /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    apt-utils gcc g++  cmake build-essential 

RUN apt install -y vim curl gdb 

