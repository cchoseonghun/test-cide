FROM node:lts-alpine

RUN mkdir -p /app
WORKDIR /app
ADD . /app/

RUN npm ci
RUN npm install -g pm2
RUN npm run build

CMD [ "npm", "run", "start"]