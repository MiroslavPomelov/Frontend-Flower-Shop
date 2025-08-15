# 🚀 Быстрое решение для Timeweb Cloud

## Проблема
Timeweb успешно клонирует репозиторий, но пытается выполнить `npm run build` в неправильной папке.

## ✅ Решение за 3 шага

### Шаг 1: Используйте правильный Dockerfile
```bash
# Переименуйте файл
mv Dockerfile.timeweb-fixed Dockerfile
```

### Шаг 2: В Timeweb Cloud укажите:
- **Контекст сборки**: `flower-shop/`
- **Команда сборки**: `npm run build`
- **Команда запуска**: `npm start`

### Шаг 3: Переменные окружения
```
NODE_ENV=production
PORT=3000
HOSTNAME=0.0.0.0
```

## 🔧 Альтернативное решение

Если ничего не помогает:
1. Выберите "Custom Dockerfile" в Timeweb
2. Укажите путь: `flower-shop/Dockerfile.timeweb-fixed`
3. Установите команды вручную

## 📁 Файлы для решения

- `Dockerfile.timeweb-fixed` - исправленный Dockerfile
- `verify-files.bat` - проверка файлов
- `TIMEWEB_SPECIFIC_SETUP.md` - детальные инструкции

## ⚡ Что происходит

1. ✅ Timeweb клонирует репозиторий в `/opt/build`
2. ✅ Видит структуру: `[".", "..", ".git", "flower-shop"]`
3. ❌ Пытается выполнить `npm run build` в `/opt/build` вместо `/opt/build/flower-shop/`
4. ✅ Решение: `Dockerfile.timeweb-fixed` правильно переходит в папку проекта

## 🎯 Результат

После исправления:
- Приложение соберется без ошибок
- Будет доступно на порту 3000
- Работает в production режиме
