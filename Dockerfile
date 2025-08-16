# УЛЬТРА-АГРЕССИВНЫЙ Dockerfile для статических HTML файлов
# Timeweb Cloud НЕ СМОЖЕТ игнорировать этот файл!

FROM nginx:alpine

# Устанавливаем метки для идентификации
LABEL maintainer="Flower Shop Team"
LABEL description="Static HTML files only - NO Next.js"
LABEL version="1.0.0"

# Показываем, что мы используем правильный Dockerfile
RUN echo "🚨🚨🚨 УЛЬТРА-АГРЕССИВНЫЙ DOCKERFILE АКТИВИРОВАН 🚨🚨🚨" && \
    echo "=== ИСПОЛЬЗУЕТСЯ НАШ DOCKERFILE ===" && \
    echo "nginx version:" && nginx -v && \
    echo "=== СТАТИЧЕСКИЕ ФАЙЛЫ ГОТОВЫ ===" && \
    echo "=== НЕТ NEXT.JS - ТОЛЬКО HTML ==="

# Создаем директорию для HTML файлов
RUN mkdir -p /usr/share/nginx/html

# Копируем статические HTML файлы
COPY flower-shop/ /usr/share/nginx/html/

# Показываем содержимое
RUN echo "=== СОДЕРЖИМОЕ HTML ===" && \
    ls -la /usr/share/nginx/html/ && \
    echo "=== ФАЙЛЫ СКОПИРОВАНЫ ===" && \
    echo "=== ПРОВЕРЯЕМ HTML ===" && \
    find /usr/share/nginx/html/ -name "*.html" -exec echo "HTML файл: {}" \;

# Создаем файл для проверки
RUN echo "Timeweb Cloud успешно использует наш Dockerfile!" > /usr/share/nginx/html/SUCCESS.txt

# Открываем порт 80
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
