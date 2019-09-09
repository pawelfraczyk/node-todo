FROM node:10.16.0-alpine

RUN mkdir -p /app/todo
WORKDIR /app/todo

COPY package.json /app/todo
COPY . /app/todo

RUN npm install

EXPOSE 8080
CMD ["node", "server.js"]
