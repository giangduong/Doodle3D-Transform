FROM ubuntu:22.04

RUN apt-get update && apt install -y --no-install-recommends curl  autoconf automake g++ libpng-dev make libimagequant-dev
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN apt update && apt install yarn
WORKDIR /app
COPY package.json /app
RUN cd /app  && yarn install 