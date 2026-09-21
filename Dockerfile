FROM node:22-alpine
WORKDIR /app

ENV PORT=3000
ENV NODE_ENV=production

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

RUN npm prune --omit=dev

CMD ["node", "dist/index.js"]
