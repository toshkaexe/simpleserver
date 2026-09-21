FROM node:22-alpine
WORKDIR /app

ENV PORT=3000

COPY package*.json ./

# Здесь NODE_ENV еще не production, поэтому установятся все зависимости (включая typescript)
RUN npm ci

COPY . .

# Теперь tsc доступен, и сборка пройдет успешно
RUN npm run build

# Удаляем devDependencies, чтобы уменьшить размер образа
RUN npm prune --omit=dev

# Устанавливаем production уже после сборки
ENV NODE_ENV=production

CMD ["node", "dist/index.js"]