#!/bin/bash
set -e
date
# print versions
chromedriver --version
google-chrome-stable --version

echo 'Starting Xvfb ...'
export DISPLAY=:99
2>/dev/null 1>&2 Xvfb :99 -shmem -screen 0 1366x768x16 &
echo 'Starting Selenium server ... access it at http://127.0.0.1:4444/wd/hub'
2>/dev/null 1>&2 nohup java -jar /usr/local/share/selenium-server-standalone-2.48.2.jar -Djava.security.egd=file:/dev/./urandom > /tmp/selenium.log &
exec "$@"
