# 🚀 Настройка для Timeweb Cloud

## ✅ Проблема решена!

Теперь у вас есть `package.json` в корне проекта, который Timeweb сможет найти.

## 🔧 Настройка в Timeweb Cloud

### 1. Создайте новый контейнер
- Выберите "Build from Source" (НЕ Docker Container!)

### 2. Настройки Git
- **Repository**: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
- **Branch**: `main`
- **Build Context**: `.` (корень)

### 3. Команды сборки
**Build Command:**
```bash
npm run build
```

**Start Command:**
```bash
npm start
```

### 4. Переменные окружения
```
NODE_ENV=production
PORT=3000
HOSTNAME=0.0.0.0
```

### 5. Порт
- **Port**: 3000
- **Protocol**: HTTP

## 🎯 Что происходит

1. **Timeweb клонирует** репозиторий в `/opt/build`
2. **Находит** `package.json` в корне
3. **Выполняет** `npm run build` → `cd flower-shop && npm ci && npm run build`
4. **Запускает** `npm start` → `cd flower-shop && npm start`

## 📁 Структура файлов

```
Frontend-Flower-Shop/
├── package.json              ← НОВЫЙ! Timeweb найдет этот файл
├── start.sh                  ← Скрипт запуска для Linux
├── start.bat                 ← Скрипт запуска для Windows
├── .timeweb                  ← Конфигурация Timeweb
├── Dockerfile                ← Для локальной сборки
├── flower-shop/              ← Основной проект
│   ├── package.json          ← Зависимости Next.js
│   ├── src/
│   └── ...
└── ...
```

## 🚨 Если все еще не работает

### Альтернатива 1: Используйте скрипты напрямую
**Build Command:**
```bash
cd flower-shop && npm ci && npm run build
```

**Start Command:**
```bash
cd flower-shop && npm start
```

### Альтернатива 2: Локальная сборка
1. Запустите `build-for-timeweb.bat`
2. Загрузите образ в registry
3. Используйте "Pre-built image"

## 🎉 Результат

После правильной настройки ваш Flower Shop будет доступен по адресу:
`http://your-domain:3000`

## 📞 Поддержка

Если у вас возникли проблемы:
1. Проверьте логи сборки в Timeweb
2. Убедитесь, что выбран "Build from Source"
3. Проверьте команды сборки и запуска
4. Обратитесь в поддержку Timeweb
