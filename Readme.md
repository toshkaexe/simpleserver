# simpleserver

Express + TypeScript сервер.

## Требования

- Node.js >= 20
- npm

## Установка

```bash
npm install
```

## Переменные окружения

Создайте файл `.env` в корне проекта:

```
PORT=5001
AUTH_LOGIN=your_login
AUTH_PASSWORD=your_password
```

`PORT` — порт сервера (по умолчанию 5001).

## Команды

| Команда | Описание |
|---------|----------|
| `npm run build` | Компиляция TypeScript в JavaScript (`dist/`) |
| `npm start` | Запуск сервера (сначала нужен `build`) |
| `npm run dev` | Запуск с nodemon + отладка |
| `npm run watch` | Автокомпиляция при изменениях |
| `npm run lint` | Линтинг с автоисправлением |
| `npm run format` | Форматирование кода (Prettier) |
| `npm run jest` | Запуск тестов |

## TypeScript конфигурация (`tsconfig.json`)

Проект написан на TypeScript. Исходники лежат в `src/`, компилируются в `dist/`.

| Опция | Значение | Описание |
|-------|----------|----------|
| `target` | `ES2020` | Версия JS на выходе (совместима с Node.js 20) |
| `module` | `commonjs` | Формат модулей — `require()`/`module.exports` |
| `rootDir` | `./src` | Папка с исходниками `.ts` |
| `outDir` | `./dist` | Папка со скомпилированным `.js` |
| `strict` | `true` | Строгая проверка типов |
| `esModuleInterop` | `true` | Позволяет `import express from 'express'` |
| `allowSyntheticDefaultImports` | `true` | Разрешает default-импорты из модулей без default-экспорта |
| `sourceMap` | `true` | Генерирует `.map` файлы для отладки |
| `skipLibCheck` | `true` | Пропускает проверку типов в `node_modules` |

## Структура проекта

```
src/           — исходники TypeScript
dist/          — скомпилированный JavaScript (генерируется, в git не входит)
.env           — переменные окружения (в git не входит)
tsconfig.json  — конфигурация TypeScript
```

## Быстрый старт

```bash
npm install
npm run build
npm start
```

Для разработки — в двух терминалах:

```bash
npm run watch    # терминал 1: автокомпиляция
npm run dev      # терминал 2: сервер с перезапуском
```
