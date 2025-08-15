# Используем базовый образ Timeweb Cloud
FROM final-image-b22ab3d2-57ab-4b0b-8460-810b99b69d7d-code:latest

# Устанавливаем рабочую директорию (как требует Timeweb)
WORKDIR /opt/build

# Копируем package.json и package-lock.json сначала
COPY package*.json ./

# Устанавливаем ВСЕ зависимости (включая devDependencies для сборки)
RUN npm ci

# Копируем исходный код
COPY . .

# Собираем приложение
RUN npm run build

# Открываем порт
EXPOSE 3000

# Устанавливаем переменные окружения
ENV PORT 3000
ENV HOSTNAME "0.0.0.0"
ENV NODE_ENV production

# Запускаем приложение
CMD ["npm", "start"]