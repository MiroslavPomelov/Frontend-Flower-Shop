# 🚀 РУКОВОДСТВО ПО РАЗВЕРТЫВАНИЮ НА TIMEWEB CLOUD

## ❌ Проблемы, которые мы исправили:

1. **Конфликт Chakra UI + Tailwind CSS** ✅
2. **Сложные анимации Framer Motion** ✅  
3. **Проблемы с useRouter** ✅
4. **Сложная структура компонентов** ✅

## ✅ Решения:

### 1. Упростили главную страницу
- Убрали `useRouter` - используем обычные ссылки `<a href="/home">`
- Убрали Chakra UI - используем inline стили
- Убрали сложные компоненты

### 2. Создали простые страницы для тестирования
- `/` - Упрощенная главная страница
- `/test` - Тестовая страница
- `/simple` - Максимально простая страница

## 🚀 Настройка Timeweb Cloud:

### ВАРИАНТ 1: Docker Container (рекомендуется)

1. **В панели Timeweb Cloud:**
   - Выберите **"Docker Container"**
   - Repository: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
   - Branch: `main`
   - **Build Context**: `.` (корень)
   - **Dockerfile**: `Dockerfile.working`

2. **Настройки порта:**
   - Port: 3000
   - Protocol: HTTP

3. **Environment Variables:**
   ```
   NODE_ENV=production
   PORT=3000
   HOSTNAME=0.0.0.0
   ```

### ВАРИАНТ 2: Build from Source

1. **В панели Timeweb Cloud:**
   - Выберите **"Build from Source"**
   - Repository: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
   - Branch: `main`
   - **Build Context**: `.` (корень)

2. **Команды:**
   - **Build Command**: `cd flower-shop && npm install --legacy-peer-deps && npm run build`
   - **Start Command**: `cd flower-shop && npm start`

## 🔧 Что происходит при развертывании:

1. **Timeweb клонирует репозиторий** ✅
2. **Находит Dockerfile.working** ✅
3. **Копирует файлы в `/opt/build`** ✅
4. **Переходит в `/opt/build/flower-shop`** ✅
5. **Очищает кэш npm** - `npm cache clean --force` ✅
6. **Устанавливает зависимости** - `npm install --legacy-peer-deps` ✅
7. **Собирает приложение** - `npm run build` ✅
8. **Запускает приложение** - `npm start` ✅

## 📁 Структура файлов:

```
flower-shop/
├── src/app/
│   ├── page.tsx              ← Упрощенная главная страница
│   ├── layout.tsx            ← Основной layout
│   ├── layout-simple.tsx     ← Упрощенный layout (без Chakra UI)
│   ├── test/page.tsx         ← Тестовая страница
│   ├── simple/page.tsx       ← Максимально простая страница
│   └── home/page.tsx         ← Полная главная страница
├── Dockerfile.working        ← Рабочий Dockerfile
└── package.json              ← Зависимости
```

## 🎯 Доступные страницы:

- **`/`** - Упрощенная главная страница (должна работать!)
- **`/test`** - Тестовая страница
- **`/simple`** - Максимально простая страница
- **`/home`** - Полная главная страница (если работает)

## 🔍 Диагностика проблем:

### Если страница не загружается:

1. **Проверьте логи в Timeweb Cloud**
2. **Попробуйте страницу `/simple`** - она максимально простая
3. **Проверьте порт 3000** - должен быть открыт
4. **Проверьте переменные окружения**

### Если сборка не проходит:

1. **Используйте `npm install --legacy-peer-deps`**
2. **Очистите кэш npm** - `npm cache clean --force`
3. **Проверьте версии Node.js** - должно быть 18+

## 🎉 Ожидаемый результат:

После правильной настройки:
1. **Сборка пройдет успешно** ✅
2. **Главная страница загрузится** ✅
3. **Будет доступна на порту 3000** ✅
4. **Кнопки навигации будут работать** ✅

## 📞 Если проблемы продолжаются:

1. **Покажите полные логи ошибки**
2. **Попробуйте страницу `/simple`**
3. **Проверьте, что репозиторий доступен**
4. **Убедитесь, что все файлы загружены в Git**

---

**Ключ к успеху**: Использовать упрощенные страницы без сложных зависимостей
