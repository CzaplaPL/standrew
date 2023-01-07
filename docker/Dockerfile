FROM node:18.10-alpine3.15

RUN apk add git
RUN npm install -g npm@9.2.0
RUN apk add bash

WORKDIR /var/www/standrew-gui

ENTRYPOINT npm ci && chmod -R 777 ./node_modules && ./node_modules/.bin/ng serve --host=0.0.0.0
