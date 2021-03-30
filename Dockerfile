FROM node:14.16.0-buster-slim

ENV NODE_ENV=production

RUN npm install pm2 -g

WORKDIR /app

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
RUN npm ci

COPY . /app/
RUN npx tsc -b

EXPOSE 80
ENV ETHEREUM_URL http://localhost:8545/
ENV POLLING_FREQUENCY_SECONDS 5

ENTRYPOINT [ "pm2-runtime", "output/WebServer.js" ]
