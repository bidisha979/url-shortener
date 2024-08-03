FROM node:latest

COPY index.js /home/app/index.js
COPY connect.js /home/app/connect.js
COPY package.json /home/app/package.json

WORKDIR /home/app/

RUN npm install

CMD  ["node", "index", "connect"]