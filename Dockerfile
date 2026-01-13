FROM node:25-alpine3.22
EXPOSE 8844

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENTRYPOINT [ "npm", "run", "start" ]
