# Простой Dockerfile для статических HTML файлов
# Timeweb Cloud ДОЛЖЕН использовать этот файл!

FROM nginx:alpine

# Показываем, что мы используем правильный Dockerfile
RUN echo "=== ИСПОЛЬЗУЕТСЯ НАШ DOCKERFILE ===" && \
    echo "nginx version:" && nginx -v && \
    echo "=== СТАТИЧЕСКИЕ ФАЙЛЫ ГОТОВЫ ==="

# Копируем статические HTML файлы
COPY flower-shop/ /usr/share/nginx/html/

# Показываем содержимое
RUN echo "=== СОДЕРЖИМОЕ HTML ===" && \
    ls -la /usr/share/nginx/html/ && \
    echo "=== ФАЙЛЫ СКОПИРОВАНЫ ==="

# Открываем порт 80
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
