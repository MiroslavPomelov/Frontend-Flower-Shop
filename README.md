# 🌸 Flower Shop - Next.js Application

Современное веб-приложение цветочного магазина, построенное на Next.js 15 с TypeScript, Tailwind CSS и Chakra UI.

## 🚀 Быстрое развертывание на Timeweb Cloud

### Проблема
Timeweb Cloud принудительно игнорирует пользовательские Dockerfile и использует свой собственный.

### Решение: "Build from Source"

1. **В панели Timeweb Cloud выберите**: "Build from Source" (НЕ Docker Container!)
2. **Контекст сборки**: `.` (корень репозитория)
3. **Команда сборки**: `cd flower-shop && npm ci && npm run build`
4. **Команда запуска**: `cd flower-shop && npm start`
5. **Порт**: 3000

### Переменные окружения
```
NODE_ENV=production
PORT=3000
HOSTNAME=0.0.0.0
```

## 🔧 Локальная разработка

### Установка зависимостей
```bash
cd flower-shop
npm install
```

### Запуск в режиме разработки
```bash
npm run dev
```

### Сборка для продакшена
```bash
npm run build
npm start
```

## 🐳 Docker (для локального тестирования)

### Сборка образа
```bash
docker build -t flower-shop .
```

### Запуск контейнера
```bash
docker run -p 3000:3000 flower-shop
```

## 📁 Структура проекта

```
Frontend-Flower-Shop/
├── Dockerfile                    # Dockerfile для локальной сборки
├── .dockerignore                 # Исключения для Docker
├── docker-compose.yml            # Docker Compose конфигурация
├── build-for-timeweb.bat         # Скрипт локальной сборки
├── fix-timeweb.bat               # Диагностика проблем
├── verify-files.bat              # Проверка файлов
├── TIMEWEB_FINAL_SOLUTION.md     # Финальное решение для Timeweb
├── TIMEWEB_ROOT_SETUP.md         # Настройка с Dockerfile в корне
├── TIMEWEB_DEPLOYMENT.md         # Основные инструкции по развертыванию
└── flower-shop/                  # Основной проект
    ├── src/                      # Исходный код
    ├── public/                   # Статические файлы
    ├── package.json              # Зависимости
    ├── next.config.js            # Конфигурация Next.js
    ├── tailwind.config.js        # Конфигурация Tailwind CSS
    └── tsconfig.json             # Конфигурация TypeScript
```

## 🌐 Развертывание

### Timeweb Cloud (рекомендуется)
- Используйте "Build from Source"
- Следуйте инструкциям в `TIMEWEB_FINAL_SOLUTION.md`

### Альтернативные платформы
- **Vercel**: Отличная поддержка Next.js
- **Netlify**: Простой деплой
- **Railway**: Современная платформа
- **Render**: Бесплатный хостинг

## 🛠️ Технологии

- **Frontend**: Next.js 15, React 19, TypeScript
- **Styling**: Tailwind CSS, Chakra UI
- **Build Tool**: Next.js (встроенный)
- **Package Manager**: npm
- **Containerization**: Docker

## 📝 Скрипты

- `build-for-timeweb.bat` - Локальная сборка Docker образа
- `fix-timeweb.bat` - Диагностика проблем с Timeweb
- `verify-files.bat` - Проверка наличия всех файлов

## 🚨 Известные проблемы

### Timeweb Cloud
- Игнорирует пользовательские Dockerfile
- Принудительно использует свой базовый образ
- Решение: используйте "Build from Source"

### Решение
Следуйте инструкциям в `TIMEWEB_FINAL_SOLUTION.md` для полного решения проблемы.

## 📞 Поддержка

Если у вас возникли проблемы:
1. Проверьте файлы диагностики
2. Следуйте инструкциям по развертыванию
3. Обратитесь в поддержку Timeweb с описанием проблемы

## 📄 Лицензия

MIT License
