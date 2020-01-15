FROM ubuntu:18.04

RUN apt update && apt-get install curl 
RUN mkdir ~/share 

RUN apt install -y git 

RUN mkdir ~/bin && PATH=~/bin:$PATH && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo 

RUN apt-get install samba -y && apt-get install smbclient -y 


RUN  apt-get install openjdk-8-jdk -y

