# 🚀 Развертывание Next.js приложения с App Router на Timeweb Cloud

## ✅ Ваше приложение готово к развертыванию!

**Структура вашего Next.js приложения:**
```
flower-shop/
├── src/
│   ├── app/                    ← App Router (Next.js 13+)
│   │   ├── page.tsx           ← Главная страница
│   │   ├── layout.tsx         ← Корневой layout
│   │   ├── globals.css        ← Глобальные стили
│   │   ├── home/              ← Страница дома
│   │   ├── shop/              ← Магазин
│   │   ├── cart/              ← Корзина
│   │   ├── checkout/          ← Оформление заказа
│   │   ├── profile/           ← Профиль
│   │   ├── login/             ← Вход
│   │   ├── favourites/        ← Избранное
│   │   └── components/        ← Компоненты
│   ├── services/              ← Сервисы
│   └── config/                ← Конфигурация
├── package.json                ← Зависимости Next.js
├── next.config.js              ← Конфигурация Next.js
├── tailwind.config.js          ← Конфигурация Tailwind CSS
└── tsconfig.json               ← Конфигурация TypeScript
```

## 🔧 Правильные настройки для Timeweb Cloud

### 1. В панели Timeweb Cloud
- **Выберите**: "Build from Source" (НЕ Docker Container!)
- **Repository**: `https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git`
- **Branch**: `main`
- **Build Context**: `.` (корень)

### 2. Команды сборки и запуска

**ВАРИАНТ A: Используйте package.json (рекомендуется)**
- Build Command: `npm run build`
- Start Command: `npm run start`

**ВАРИАНТ B: Прямые команды**
- Build Command: `cd flower-shop && npm ci && npm run build`
- Start Command: `cd flower-shop && npm start`

**ВАРИАНТ C: Bash скрипт**
- Build Command: `chmod +x start.sh && ./start.sh`
- Start Command: `chmod +x start.sh && ./start.sh`

### 3. Настройки порта и переменных
- **Port**: 3000
- **Protocol**: HTTP
- **Environment Variables**:
  ```
  NODE_ENV=production
  PORT=3000
  HOSTNAME=0.0.0.0
  ```

## 🎯 Что происходит при развертывании

1. **Timeweb клонирует** репозиторий ✅
2. **Находит** `package.json` в корне ✅
3. **Выполняет** `npm run build` → `cd flower-shop && npm ci && npm run build` ✅
4. **Создает** Next.js приложение в папке `.next` ✅
5. **Запускает** `npm run start` → `cd flower-shop && npm start` ✅
6. **Ваше приложение** доступно на порту 3000 ✅

## 🚀 Как работает ваше приложение

### Главная страница
- **URL**: `/` (корень)
- **Файл**: `src/app/page.tsx`
- **Layout**: `src/app/layout.tsx`

### Другие страницы
- **Дом**: `/home` → `src/app/home/page.tsx`
- **Магазин**: `/shop` → `src/app/shop/page.tsx`
- **Корзина**: `/cart` → `src/app/cart/page.tsx`
- **Оформление**: `/checkout` → `src/app/checkout/page.tsx`
- **Профиль**: `/profile` → `src/app/profile/page.tsx`
- **Вход**: `/login` → `src/app/login/page.tsx`
- **Избранное**: `/favourites` → `src/app/favourites/page.tsx`

## 📁 Файлы для развертывания

1. **`package.json`** - обновлен для реального запуска Next.js
2. **`flower-shop/index.html`** - страница загрузки с перенаправлением
3. **`start.sh`** - bash скрипт для запуска
4. **`start.bat`** - Windows скрипт для запуска

## 🎉 Ожидаемый результат

После правильной настройки:
1. **Сборка пройдет успешно** ✅
2. **Next.js приложение запустится** ✅
3. **Будет доступно на порту 3000** ✅
4. **Все страницы будут работать** ✅
5. **App Router будет функционировать** ✅

## 📞 Если возникнут проблемы

1. **Проверьте логи** в Timeweb Cloud
2. **Убедитесь**, что выбран "Build from Source"
3. **Проверьте команды** сборки и запуска
4. **Используйте прямые команды** (ВАРИАНТ B)

## 🚀 Следующие шаги

1. **Настройте Timeweb Cloud** согласно инструкциям выше
2. **Запустите развертывание** с правильными командами
3. **Наслаждайтесь работающим Next.js приложением**! 🎉

---

**Ключ к успеху**: Правильно настроить команды для сборки и запуска Next.js приложения
