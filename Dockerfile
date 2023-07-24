FROM node:18

RUN apt-get update && apt install -y --no-install-recommends curl apt-utils autoconf automake g++ libpng-dev make libimagequant-dev git
#RUN apt remove nodejs
#RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs

RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash -
# RUN . /root/.bashrc
#RUN curl -o- -L https://yarnpkg.com/install.sh | bash
#RUN apt update && apt install yarn
WORKDIR /app
RUN . $HOME/.bashrc && export PATH="$PATH:$HOME/.yarn/bin/"
#RUN $HOME/.yarn/bin/yarn add global npm
COPY package.json /app
COPY . /app
RUN cd /app  && $HOME/.yarn/bin/yarn install --non-interactive
RUN yarn add http-server -D
RUN $HOME/.yarn/bin/yarn dist 
EXPOSE 8080/tcp
CMD ["yarn","http-server","/app/dist"]