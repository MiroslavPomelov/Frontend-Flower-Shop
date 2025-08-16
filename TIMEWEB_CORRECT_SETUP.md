# 🔧 ПРАВИЛЬНАЯ НАСТРОЙКА TIMEWEB CLOUD

## ❌ Проблема
Next.js сборка падает с ошибкой Chakra UI: `Cannot use 'in' operator to search for 'colors.pink.400' in undefined`

## ✅ Решение - Статические HTML файлы

### ВАРИАНТ 1: Build from Source (рекомендуется)

1. **В панели Timeweb Cloud:**
   - Выберите **"Build from Source"** (НЕ Docker Container!)
   - Repository: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
   - Branch: `main`
   - **Build Context**: `.` (корень)

2. **Команды сборки:**
   - **Build Command**: `echo "Static HTML files are ready" && ls -la`
   - **Start Command**: `npx http-server . -p 3000 -o`

3. **Переменные окружения:**
   ```
   NODE_ENV=production
   PORT=3000
   HOSTNAME=0.0.0.0
   ```

### ВАРИАНТ 2: Docker Container (если Build from Source не работает)

1. **В панели Timeweb Cloud:**
   - Выберите **"Docker Container"**
   - Repository: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
   - Branch: `main`
   - **Build Context**: `.` (корень)
   - **Dockerfile**: `flower-shop/Dockerfile.static`

2. **Настройки порта:**
   - Port: 80
   - Protocol: HTTP

## 🌐 Созданные HTML страницы

Для демонстрации на Timeweb Cloud созданы статические HTML страницы:

- **`/`** - Главная страница с навигацией
- **`/cart`** - Корзина покупок
- **`/login`** - Авторизация и регистрация
- **`/profile`** - Личный кабинет
- **`/checkout`** - Оформление заказа

## 🔍 Почему статические HTML лучше:

- ✅ Нет проблем с Next.js сборкой
- ✅ Нет ошибок Chakra UI
- ✅ Работают сразу после развертывания
- ✅ Простая настройка
- ✅ Быстрая загрузка

## 📋 Пошаговая инструкция:

1. **Откройте панель Timeweb Cloud**
2. **Выберите ваш проект**
3. **Нажмите "Redeploy" или "Deploy"**
4. **Выберите "Build from Source"**
5. **Используйте новые команды сборки**
6. **Запустите развертывание**

## 🎯 Ожидаемый результат:

После правильной настройки:
- ✅ Статические HTML файлы будут готовы
- ✅ Простой HTTP сервер запустится
- ✅ Сайт будет доступен по домену
- ✅ Все HTML страницы будут работать

## 🔧 Если проблемы продолжаются:

1. **Проверьте логи** в Timeweb Cloud
2. **Убедитесь, что выбрали "Build from Source"**
3. **Проверьте команды сборки и запуска**
4. **Попробуйте Docker Container с Dockerfile.static**

## 📱 Тестирование после развертывания:

1. **Главная страница**: `https://ваш-домен.twc1.net/`
2. **Корзина**: `https://ваш-домен.twc1.net/cart`
3. **Авторизация**: `https://ваш-домен.twc1.net/login`
4. **Профиль**: `https://ваш-домен.twc1.net/profile`
5. **Оформление заказа**: `https://ваш-домен.twc1.net/checkout`

---

**Важно**: Используйте статические HTML файлы для избежания проблем с Next.js сборкой!

**Примечание**: Статические HTML страницы работают сразу и не требуют сложной сборки.
