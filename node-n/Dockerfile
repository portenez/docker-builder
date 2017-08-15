FROM portenez/docker-builder:xenial

ARG node_version=6.4.0
ARG runjs_version=2.5.1
ARG yarn_version=0.24.6

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

RUN npm install -g n \
    && n ${node_version} \
    && n use ${node_version}

RUN npm install -g yarn@${yarn_version}
RUN npm install -g runjs@${runjs_version}
RUN npm install -g nodemon
