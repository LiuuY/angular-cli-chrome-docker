FROM node:6

LABEL name="angular-cli-chrome-docker" \
      maintainer="mail4c59@gmail.com" \
      description="Install Angular CLI and Chrome in Docker"

#Global install angular cli
RUN npm install -g @angular/cli \
    && ng set --global packageManager=yarn \
    && npm cache clear

#Install chrome >= v59
ARG CHROME_VERSION="google-chrome-stable"
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update -qqy \
  && apt-get -qqy install \
    ${CHROME_VERSION:-google-chrome-stable} \
  && rm /etc/apt/sources.list.d/google-chrome.list \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
