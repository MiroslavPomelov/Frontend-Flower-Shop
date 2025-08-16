#!/bin/bash

echo "🔍 Проверка системных зависимостей..."

# Проверяем Node.js
if command -v node &> /dev/null; then
    echo "✅ Node.js найден: $(node --version)"
else
    echo "❌ Node.js не найден"
fi

# Проверяем npm
if command -v npm &> /dev/null; then
    echo "✅ npm найден: $(npm --version)"
else
    echo "❌ npm не найден"
fi

# Проверяем npx
if command -v npx &> /dev/null; then
    echo "✅ npx найден"
else
    echo "❌ npx не найден"
fi

# Проверяем http-server
if command -v http-server &> /dev/null; then
    echo "✅ http-server найден"
else
    echo "⚠️  http-server не найден, будет установлен через npm"
fi

# Проверяем наличие HTML файлов
echo "📁 Проверка HTML файлов..."
ls -la *.html 2>/dev/null || echo "❌ HTML файлы не найдены в текущей директории"

echo "🚀 Система готова к работе!"
