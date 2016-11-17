FROM ubuntu:14.04

RUN apt-get update \
    && apt-get install -y \
    curl \
    git \
    libssl-dev \
    build-essential \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    && apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D \
    && echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | tee /etc/apt/sources.list.d/docker.list \
    && apt-get update && apt-get install -y docker-engine \
    && curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose
