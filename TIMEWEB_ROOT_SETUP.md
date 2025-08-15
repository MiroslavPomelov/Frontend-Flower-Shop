# 🚀 Настройка Timeweb Cloud с Dockerfile в корне

## Проблема: Timeweb игнорирует наш Dockerfile!

### Что происходит:
1. ✅ Timeweb клонирует репозиторий в `/opt/build`
2. ✅ Видит структуру: `[".", "..", ".dockerignore", ".git", "Dockerfile", "TIMEWEB_ROOT_SETUP.md", "flower-shop"]`
3. ✅ Читает наш Dockerfile (361B)
4. ❌ **НО игнорирует его и использует свой!**

## 🔧 Решение: Используйте "Custom Dockerfile" в Timeweb

### 1. В панели Timeweb Cloud

#### Настройки контейнера:
- **Тип**: Docker Container
- **Источник**: Git Repository
- **URL**: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
- **Ветка**: `main`

#### Критически важные настройки:
- **Выберите**: "Custom Dockerfile" (НЕ автоматическая сборка!)
- **Dockerfile путь**: `Dockerfile`
- **Контекст сборки**: `.` (корень репозитория)
- **Порт**: 3000

#### Переменные окружения:
```
NODE_ENV=production
PORT=3000
HOSTNAME=0.0.0.0
```

### 2. Альтернативное решение: "Build from Source"

Если "Custom Dockerfile" не работает:

#### Настройки:
- **Выберите**: "Build from Source"
- **Контекст сборки**: `.` (корень репозитория)
- **Команда сборки**: `cd flower-shop && npm ci && npm run build`
- **Команда запуска**: `cd flower-shop && npm start`

### 3. Ручная сборка (если ничего не помогает)

#### Локально:
```bash
# Собрать образ
docker build -t flower-shop .

# Запустить для тестирования
docker run -p 3000:3000 flower-shop

# Отправить в registry
docker tag flower-shop your-registry/flower-shop:latest
docker push your-registry/flower-shop:latest
```

#### В Timeweb:
- Выберите "Pre-built image"
- Укажите путь к вашему образу

## 📁 Структура файлов

```
Frontend-Flower-Shop/
├── Dockerfile              ← Наш Dockerfile (игнорируется Timeweb)
├── .dockerignore           ← Исключения для Docker
├── docker-compose.yml      ← Альтернативная конфигурация
├── fix-timeweb.bat         ← Скрипт исправления
├── TIMEWEB_ROOT_SETUP.md   ← Эта инструкция
└── flower-shop/            ← Ваш проект
    ├── package.json
    ├── src/
    ├── public/
    └── ...
```

## 🎯 Как это работает

1. **Timeweb клонирует** весь репозиторий в `/opt/build`
2. **При выборе "Custom Dockerfile"** Timeweb использует наш Dockerfile
3. **Наш Dockerfile** переходит в `/opt/build/flower-shop/`
4. **Устанавливает зависимости** и собирает приложение
5. **Запускает** на порту 3000

## ⚠️ Важно!

- **НЕ используйте автоматическую сборку** - она игнорирует наш Dockerfile
- **Выберите "Custom Dockerfile"** в настройках Timeweb
- **Укажите правильный путь** к Dockerfile
- **Контекст сборки**: `.` (корень репозитория)

## 🔍 Проверка

После настройки в логах должно быть:
```
WORKDIR /opt/build
WORKDIR /opt/build/flower-shop
npm ci
npm run build
npm start
```

## 📝 Команды для Git

```bash
# Добавить новые файлы
git add Dockerfile .dockerignore docker-compose.yml fix-timeweb.bat TIMEWEB_ROOT_SETUP.md

# Закоммитить
git commit -m "Fix Timeweb Cloud deployment with Custom Dockerfile"

# Отправить в репозиторий
git push origin main
```

## 🚨 Если проблема остается

1. **Запустите `fix-timeweb.bat`** для диагностики
2. **Попробуйте "Build from Source"** вместо "Custom Dockerfile"
3. **Соберите образ локально** и используйте "Pre-built image"
4. **Обратитесь в поддержку Timeweb** с описанием проблемы

## 🎉 Результат

После правильной настройки "Custom Dockerfile" ваш проект должен корректно собираться и запускаться на Timeweb Cloud!
