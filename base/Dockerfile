FROM ubuntu:16.04

ARG docker_compose_version=1.14.0

# Base software
RUN apt-get update \
    && apt-get install -y \
    curl \
    git \
    zip \
    libssl-dev \
    build-essential \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    vim

# Install docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) \
      stable" \
    && apt-get update && apt-get install -y docker-ce

# Install docker compose 1.14
RUN curl -L https://github.com/docker/compose/releases/download/${docker_compose_version}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose
