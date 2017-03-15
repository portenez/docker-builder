FROM portenez/docker-builder:nightwatch

RUN wget -O /tmp/selenium-server-standalone-2.48.2.jar  http://selenium-release.storage.googleapis.com/2.48/selenium-server-standalone-2.48.2.jar \
    && cd /tmp \
    && mv -f selenium-server-standalone-2.48.2.jar /usr/local/share/selenium-server-standalone-2.48.2.jar
RUN n 6.9.1 \
    && npm install -g sitespeed.io
COPY ./sitespeedStart.sh /usr/local/share
RUN chmod a+x /usr/local/share/sitespeedStart.sh \
    && ln -s /usr/local/share/sitespeedStart.sh /usr/local/bin/sitespeedStart.sh \
    && ln -s /usr/local/share/sitespeedStart.sh /usr/bin/sitespeedStart.sh
