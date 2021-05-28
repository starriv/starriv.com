FROM node:lts-alpine
LABEL maintainer="starriv.993@gmail.com"
WORKDIR /app

COPY .next /app/.next
COPY package.json /app/package.json
COPY yarn.lock   /app/yarn.lock
COPY public /app/public 

ARG NODE_ENV=production
ARG PORT=3000

ENV NODE_ENV=${NODE_ENV} \
    PORT=${PORT}

RUN yarn

EXPOSE $PORT

ENTRYPOINT [ "yarn", "start"]
