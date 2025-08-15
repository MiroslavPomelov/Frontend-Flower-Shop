# Используем базовый образ Timeweb Cloud
FROM static-advanced-node-12-ng22:latest

# Устанавливаем рабочую директорию
WORKDIR /opt/build

# Копируем файлы проекта
COPY . .

# Показываем содержимое для отладки
RUN ls -la && echo "=== Flower-shop contents ===" && ls -la flower-shop/ || echo "flower-shop directory not found"

# Переходим в папку проекта
WORKDIR /opt/build/flower-shop

# Показываем содержимое package.json
RUN cat package.json || echo "package.json not found"

# Очищаем кэш npm
RUN npm cache clean --force

# Устанавливаем зависимости с подробным выводом
RUN npm install --legacy-peer-deps --verbose

# Собираем приложение с подробным выводом
RUN npm run build --verbose

# Открываем порт
EXPOSE 3000

# Устанавливаем переменные окружения
ENV PORT 3000
ENV HOSTNAME "0.0.0.0"
ENV NODE_ENV production

# Запускаем приложение
CMD ["npm", "start"]
