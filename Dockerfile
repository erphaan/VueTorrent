FROM node:10-slim

# Create app directory
WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 3001

CMD ["node","server/server.js"]
