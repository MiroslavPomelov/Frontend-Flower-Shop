# Используем официальный образ Node.js на Alpine (легковесный)
FROM node:18-alpine AS builder

# Устанавливаем зависимости для работы с пакетами npm
RUN apk add --no-cache libc6-compat

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем только файлы, необходимые для установки зависимостей
COPY package.json package-lock.json* ./
RUN npm ci --omit=dev

# Копируем остальные файлы проекта
COPY . .

# Собираем приложение
RUN npm run build

# Используем образ nginx для раздачи статики
FROM nginx:alpine AS runner

# Устанавливаем рабочую директорию nginx
WORKDIR /usr/share/nginx/html

# Удаляем дефолтные файлы nginx
RUN rm -rf ./*

# Копируем только необходимые файлы из builder
COPY --from=builder /app/.next/standalone ./
COPY --from=builder /app/.next/static ./.next/static
COPY --from=builder /app/public ./public

# Копируем конфиг nginx (если используется)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Открываем порт 3000 (по умолчанию Next.js)
EXPOSE 3000

# Запускаем сервер
CMD ["node", "server.js"]