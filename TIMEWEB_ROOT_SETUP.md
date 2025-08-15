# 🚀 Настройка Timeweb Cloud с Dockerfile в корне

## Проблема решена!

Теперь у нас есть `Dockerfile` в корне репозитория, который правильно работает с Timeweb Cloud.

## ✅ Что происходит сейчас

1. ✅ Timeweb клонирует репозиторий в `/opt/build`
2. ✅ Видит структуру: `[".", "..", ".git", "flower-shop"]`
3. ✅ Наш Dockerfile переходит в `/opt/build/flower-shop/`
4. ✅ Выполняет `npm ci` и `npm run build` в правильной папке

## 🔧 Настройка в Timeweb Cloud

### 1. Создание контейнера
- **Тип**: Docker Container
- **Источник**: Git Repository
- **URL**: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
- **Ветка**: `main`

### 2. Критически важные настройки
- **Контекст сборки**: ОСТАВЬТЕ ПУСТЫМ (корень репозитория)
- **Dockerfile путь**: `Dockerfile` (автоматически найдет в корне)
- **Порт**: 3000

### 3. Переменные окружения
```
NODE_ENV=production
PORT=3000
HOSTNAME=0.0.0.0
```

## 📁 Структура файлов

```
Frontend-Flower-Shop/
├── Dockerfile              ← НОВЫЙ! В корне
├── .dockerignore           ← НОВЫЙ! В корне
├── TIMEWEB_ROOT_SETUP.md   ← Эта инструкция
└── flower-shop/            ← Ваш проект
    ├── package.json
    ├── src/
    ├── public/
    └── ...
```

## 🎯 Как это работает

1. **Timeweb клонирует** весь репозиторий в `/opt/build`
2. **Наш Dockerfile** автоматически переходит в `/opt/build/flower-shop/`
3. **Устанавливает зависимости** и собирает приложение
4. **Запускает** на порту 3000

## ⚠️ Важно!

- **НЕ указывайте** контекст сборки `flower-shop/`
- **Оставьте пустым** или укажите `.` (корень)
- **Dockerfile должен быть** в корне репозитория

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
git add Dockerfile .dockerignore TIMEWEB_ROOT_SETUP.md

# Закоммитить
git commit -m "Add Timeweb Cloud support with root Dockerfile"

# Отправить в репозиторий
git push origin main
```

## 🎉 Результат

Теперь ваш проект должен корректно собираться и запускаться на Timeweb Cloud!
