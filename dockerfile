FROM node:lts-alpine

RUN mkdir -p /app
WORKDIR /app
ADD . /app/

RUN bun install
# RUN npm run test

# RUN npm install -g pm2
RUN bun run build

# ENV HOST 0.0.0.0
# EXPOSE 8080

CMD [ "bun", "run", "start"]