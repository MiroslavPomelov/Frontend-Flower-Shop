# 🔧 ПРАВИЛЬНАЯ НАСТРОЙКА TIMEWEB CLOUD

## ❌ Проблема
Timeweb Cloud пытается использовать свой собственный процесс развертывания вместо нашего Dockerfile, что приводит к ошибке на этапе SSH ключей.

## ✅ Решение

### ВАРИАНТ 1: Build from Source (рекомендуется)

1. **В панели Timeweb Cloud:**
   - Выберите **"Build from Source"** (НЕ Docker Container!)
   - Repository: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
   - Branch: `main`
   - **Build Context**: `.` (корень)

2. **Команды сборки:**
   - **Build Command**: `cd flower-shop && npm install --legacy-peer-deps && npm run build`
   - **Start Command**: `cd flower-shop && npm start`

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
   - **Dockerfile**: `flower-shop/Dockerfile.simple`

2. **Настройки порта:**
   - Port: 3000
   - Protocol: HTTP

## 🌐 Созданные HTML страницы

Для демонстрации на Timeweb Cloud созданы статические HTML страницы:

- **`/`** - Главная страница с навигацией
- **`/cart`** - Корзина покупок
- **`/login`** - Авторизация и регистрация
- **`/profile`** - Личный кабинет
- **`/checkout`** - Оформление заказа
- **`/debug`** - Диагностика
- **`/status`** - Статус системы
- **`/simple`** - Простая страница
- **`/test`** - Тестовая страница

## 🔍 Почему Build from Source лучше:

- ✅ Не использует SSH ключи
- ✅ Прямая установка зависимостей
- ✅ Простая сборка и запуск
- ✅ Меньше ошибок
- ✅ Статические HTML страницы работают сразу

## 📋 Пошаговая инструкция:

1. **Откройте панель Timeweb Cloud**
2. **Выберите ваш проект**
3. **Нажмите "Redeploy" или "Deploy"**
4. **Выберите "Build from Source"**
5. **Убедитесь, что команды указаны правильно**
6. **Запустите развертывание**

## 🎯 Ожидаемый результат:

После правильной настройки:
- ✅ Зависимости установятся
- ✅ Приложение соберется
- ✅ Next.js сервер запустится
- ✅ Сайт будет доступен по домену
- ✅ Все HTML страницы будут работать

## 🔧 Если проблемы продолжаются:

1. **Проверьте логи** в Timeweb Cloud
2. **Убедитесь, что выбрали "Build from Source"**
3. **Проверьте команды сборки и запуска**
4. **Попробуйте пересобрать проект**

## 📱 Тестирование после развертывания:

1. **Главная страница**: `https://ваш-домен.twc1.net/`
2. **Корзина**: `https://ваш-домен.twc1.net/cart`
3. **Авторизация**: `https://ваш-домен.twc1.net/login`
4. **Профиль**: `https://ваш-домен.twc1.net/profile`
5. **Оформление заказа**: `https://ваш-домен.twc1.net/checkout`

---

**Важно**: Используйте "Build from Source" вместо "Docker Container" для избежания проблем с SSH ключами!

**Примечание**: Статические HTML страницы будут работать даже если Next.js не запустится, что обеспечит базовую функциональность сайта.
