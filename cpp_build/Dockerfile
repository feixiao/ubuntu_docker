FROM feixiao/cpp_base:1.2


LABEL maintainer="frank<feixiao2020@sina.com>"

########################################################
# Essential packages for remote debugging and login in
########################################################

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
