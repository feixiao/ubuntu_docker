FROM feixiao/cpp_build_2504:1.0

LABEL maintainer="frank<feixiao2020@sina.com>"



# add oh-my-shell
RUN apt update && apt install -y zsh git 

# root安装zsh
RUN wget https://gitee.com/Devkings/oh_my_zsh_install/raw/master/install.sh -O - | zsh || true 

# 切换用户
USER frank 
RUN wget https://gitee.com/Devkings/oh_my_zsh_install/raw/master/install.sh -O - | zsh || true 



# 切换用户(不切换回来，导致容器不能启动)
USER root 

# # support Miniconda3
#RUN wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh 
#RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && rm -rf Miniconda3-latest-Linux-x86_64.sh
RUN wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-py38_23.10.0-1-Linux-aarch64.sh && \
    bash Miniconda3-py38_23.10.0-1-Linux-aarch64.sh -b -p /opt/conda && \
    rm -rf Miniconda3-py38_23.10.0-1-Linux-aarch64.sh
RUN /opt/conda/bin/conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
RUN echo "export PATH=/opt/conda/bin:${PATH}" >> /etc/profile

RUN apt-get install -y gengetopt \
    libtool \
    automake \
    subversion \
    unzip \
    zip \
    lsof


RUN apt-get install -y  ninja-build  libz-dev libpng-dev 



WORKDIR /home/frank
