FROM jenkins/jenkins:lts

#ADD sources.list /etc/apt/sources.list


USER root

RUN apt-get update && apt-get install -y vim

# drop back to the regular jenkins user - good practice
USER jenkins