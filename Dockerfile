# syntax=docker/dockerfile:1

ARG NODE_VERSION=21.3.0

FROM node:${NODE_VERSION}-alpine

WORKDIR /usr/src/app

COPY . .

RUN yarn install

RUN yarn build

USER node

EXPOSE 3500

CMD node ./build/index.js