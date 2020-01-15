FROM ubuntu:18.04 AS base

MAINTAINER shikanon <shikanon@tensorbytes.com>

RUN apt update && apt install  -y npm \
    curl \
    git \
    openjdk-8-jdk \
    openssh-server \
    samba \
    smbclient

RUN curl  https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && chmod +x /usr/local/bin/repo

ENV LANG C.UTF-8


EXPOSE 8088
EXPOSE 22
