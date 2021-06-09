FROM ubuntu:latest

WORKDIR /root
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y tmux
RUN apt-get install -y net-tools
RUN apt-get install -y git
RUN apt-get install -y tig
RUN apt-get install -y gcc
RUN apt-get install -y g++

RUN git clone https://github.com/chun4foryou/devenv.git

RUN cp ./devenv/.tmux.conf ./
RUN cp ./devenv/.vimrc ./
RUN cp ./devenv/.gitconfig ./

WORKDIR /home

