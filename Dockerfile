FROM ubuntu:22.04

RUN apt-get update && apt install -y --no-install-recommends curl  autoconf automake g++ libpng-dev make libimagequant-dev
RUN curl -k -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
RUN nvm install 18 && nvm use 18
RUN curl -k -o- -L https://yarnpkg.com/install.sh | bash
WORKDIR /app
COPY package.json /app
RUN cd /app  && yarn install 