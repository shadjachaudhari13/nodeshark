FROM node:10-alpine

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT 5000

ARG PORT=5000

EXPOSE $PORT

CMD [ "node", "app.js" ]