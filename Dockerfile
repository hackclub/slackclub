FROM node:4.2

WORKDIR /usr/src/app

RUN npm install -g slack-irc
COPY . /usr/src/app/

ENTRYPOINT ["./bin/launch.sh"]
