#!/bin/bash

echo "Building Docker image for Flower Shop..."

# Остановить и удалить существующие контейнеры
docker stop flower-shop 2>/dev/null || true
docker rm flower-shop 2>/dev/null || true

# Удалить существующий образ
docker rmi flower-shop 2>/dev/null || true

# Собрать новый образ
echo "Building image..."
docker build -t flower-shop .

if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo "Starting container..."
    docker run -d --name flower-shop -p 3000:3000 flower-shop
    
    echo "🌺 Flower Shop is running on http://localhost:3000"
    echo "To stop: docker stop flower-shop"
    echo "To view logs: docker logs flower-shop"
else
    echo "❌ Build failed!"
    exit 1
fi
