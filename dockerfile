FROM node:lts-alpine

RUN mkdir -p /app
WORKDIR /app
ADD . /app/

RUN npm install -g bun
RUN bun install --frozen-lockfile
# RUN npm run test

# RUN npm install -g pm2
RUN bun run build

# ENV HOST 0.0.0.0
# EXPOSE 8080

CMD [ "bun", "run", "start"]