FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y \
    curl \
    git \
    libssl-dev \
    build-essential \
    software-properties-common
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash \
    && sudo apt-get install -y nodejs \
    && npm install -g n \
    && n 6.4.0 \
    && n use 6.4.0 \
    && npm install -g yarn
RUN add-apt-repository ppa:ubuntu-toolchain-r/test -y \
    && apt-get update \
    && apt-get install libstdc++-4.9-dev python -y
RUN sudo add-apt-repository ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y openjdk-8-jdk
