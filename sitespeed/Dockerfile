FROM portenez/docker-builder:nightwatch

RUN n 6.9.1 \
    && npm install -g sitespeed.io@4.7.0
RUN wget -O /tmp/selenium-server-standalone.jar  http://selenium-release.storage.googleapis.com/3.3/selenium-server-standalone-3.3.1.jar \
    && mkdir -p /opt/selenium \
    && mv -f /tmp/selenium-server-standalone.jar /opt/selenium
