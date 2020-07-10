FROM ubuntu:20.04


LABEL maintainer="frank<feixiao2020@sina.com>"


ADD sources.list /etc/apt/sources.list


# 防止选择市区卡死
RUN export DEBIAN_FRONTEND=noninteractive \
    && apt update \
    && apt install -y tzdata \
    && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && dpkg-reconfigure --frontend noninteractive tzdata

RUN apt install -y gcc g++  cmake build-essential  ninja-build 

RUN apt install -y vim curl gdb git wget 

RUN apt install -y  openssh-server  sudo

RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# 22 for ssh server.
EXPOSE 22 

RUN useradd -ms /bin/bash frank
RUN echo 'frank:1' | chpasswd

RUN sudo apt install lrzsz -y

RUN echo 'frank  ALL=(ALL:ALL) ALL' >> /etc/sudoers

########################################################
# Add custom packages and development environment here
########################################################

########################################################

CMD ["/usr/sbin/sshd", "-D"]
