FROM node:14

ENV LANG=C.UTF-8 \
    TZ=ASIA/TOKYO \
    HOST=0.0.0.0

WORKDIR /app

COPY ./package.json ./
RUN yarn install

COPY . ./

RUN yarn build
