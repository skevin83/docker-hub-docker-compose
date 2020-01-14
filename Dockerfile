FROM centos:7

MAINTAINER Kevin See <skevin83@gmail.com>

WORKDIR /home

RUN yum -y install curl wget python2
RUN curl https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
RUN yum makecache
RUN yum -y install docker
RUN curl -L https://github.com/docker/compose/releases/download/1.25.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
