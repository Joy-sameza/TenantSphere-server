FROM mcr.microsoft.com/devcontainers/typescript-node:1-22-bookworm as base

RUN apt update

RUN --mount=type=cache,target=/root/.npm-cache \
    su node -c "npm install -g npm @nestjs/cli"

FROM base as dev

WORKDIR /usr/src/app

COPY package*.json .

RUN --mount=type=cache,target=/root/.npm \
    npm install

FROM dev as final

COPY . .
