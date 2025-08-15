# Базовый образ
FROM node:18-alpine

# 1. Устанавливаем рабочую директорию
WORKDIR /opt/build

# 2. Копируем ТОЛЬКО файлы зависимостей (для оптимизации кэша)
COPY package.json package-lock.json ./

# 3. Устанавливаем зависимости
RUN npm install

# 4. Копируем ВЕСЬ остальной проект
COPY . .

# 5. Собираем приложение
RUN npm run build

# 6. Запускаем приложение (для production используйте 'npm start')
CMD ["npm", "run", "dev"]