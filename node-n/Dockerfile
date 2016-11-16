FROM portenez/docker-builder:base

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash \
    && apt-get install -y nodejs \
    && npm install -g n \
    && n 6.4.0 \
    && n use 6.4.0 \
    && npm install -g yarn
