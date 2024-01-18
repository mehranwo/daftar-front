FROM node:18-alpine as builder

WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./

RUN yarn 


# COPY public/ public/
# COPY scripts/removeSourcemaps.js scripts/
# COPY tsconfig.json ./
COPY docker-compose.yml ./
COPY . ./

# ARG BASE_URL

# ENV BASE_URL ${BASE_URL: -https://api.garamaleki.ir/graphql/}

RUN yarn build
