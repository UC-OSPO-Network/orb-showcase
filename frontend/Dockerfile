FROM node:20-alpine

WORKDIR /app

RUN npm install -g pnpm

COPY package.json pnpm-lock.yaml ./
COPY . .

EXPOSE 3000

CMD pnpm install && pnpm dev --turbo
