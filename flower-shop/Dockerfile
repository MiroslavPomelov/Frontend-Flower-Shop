# Базовый образ с Node.js
FROM node:alpine

# Устанавливаем рабочую директорию
WORKDIR /opt/build

# Копируем package.json и package-lock.json в первую очередь
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем ВСЕ остальные файлы проекта
COPY . .

# Собираем приложение (если нужно)
RUN npm run build

# Указываем порт
EXPOSE 3000

# Команда для запуска приложения
CMD ["npm", "run", "dev"]