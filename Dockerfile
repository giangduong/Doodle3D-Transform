FROM ubuntu:22.04

RUN apt-get update && apt install -y --no-install-recommends curl  autoconf automake g++ libpng-dev make libimagequant-dev git
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash -
# RUN . /root/.bashrc
#RUN curl -o- -L https://yarnpkg.com/install.sh | bash
#RUN apt update && apt install yarn
WORKDIR /app
COPY package.json /app
COPY . /app
RUN cd /app  && $HOME/.yarn/bin/yarn install --non-interactive

RUN $HOME/.yarn/bin/yarn dist 
CMD ["http-server /dist"]