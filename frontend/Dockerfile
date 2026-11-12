FROM node:24-alpine

WORKDIR /app

# pnpm comes from Corepack, at the version in package.json's "packageManager"
ENV COREPACK_ENABLE_DOWNLOAD_PROMPT=0
RUN corepack enable && chown node:node /app

# Build and run as the image's unprivileged node user, not root
USER node

COPY --chown=node:node package.json pnpm-lock.yaml ./
COPY --chown=node:node . .
RUN pnpm install --frozen-lockfile
RUN pnpm build

EXPOSE 3000

CMD ["pnpm", "start"]
