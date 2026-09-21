FROM node:22-alpine
WORKDIR /app

ENV PORT 3000
ENV NODE_ENV=production

COPY package*.json ./

RUN npm ci --omit=dev

COPY  . .

CMD ["node", "index.ts"]