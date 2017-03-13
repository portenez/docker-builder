FROM portenez/docker-builder:node-n

RUN add-apt-repository ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y openjdk-8-jdk
RUN apt-get install -y wget \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-stable
RUN apt-get install -y \
    xvfb \
    gtk2-engines-pixbuf \
    xfonts-cyrillic \
    xfonts-100dpi \
    xfonts-75dpi \
    xfonts-base \
    xfonts-scalable \
    imagemagick \
    x11-apps
# Chrome driver
RUN apt-get install -y unzip
RUN wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/2.28/chromedriver_linux64.zip \
    && cd /tmp \
    && unzip chromedriver.zip \
    && chmod a+x chromedriver \
    && mv -f chromedriver /usr/local/share/chromedriver \
    && ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver \
    && ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
