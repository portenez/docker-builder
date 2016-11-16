FROM nitrousio/ubuntu-dind:14.04

RUN rm -rfv /etc/apt/sources.list.d/docker.list* && apt-get update
RUN apt-get install -y \
    curl \
    git \
    libssl-dev \
    build-essential \
    software-properties-common
