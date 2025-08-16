#!/bin/bash

echo "🚀 Принудительная сборка Docker для Timeweb Cloud"

# Очищаем старые образы
docker system prune -f

# Собираем образ
echo "📦 Сборка Docker образа..."
docker build -t flower-shop-static .

# Проверяем образ
echo "🔍 Проверка образа..."
docker images | grep flower-shop-static

# Запускаем контейнер для теста
echo "🧪 Тестирование контейнера..."
docker run -d --name test-flower-shop -p 8080:80 flower-shop-static

# Ждем запуска
sleep 3

# Проверяем статус
echo "📊 Статус контейнера:"
docker ps | grep test-flower-shop

# Останавливаем тестовый контейнер
echo "🛑 Остановка тестового контейнера..."
docker stop test-flower-shop
docker rm test-flower-shop

echo "✅ Сборка завершена успешно!"
echo "🌐 Образ готов для развертывания на Timeweb Cloud"
