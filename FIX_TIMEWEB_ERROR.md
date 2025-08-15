# 🚨 Исправление ошибки Timeweb Cloud

## ✅ Прогресс!

Timeweb Cloud теперь:
- ✅ Находит наш `package.json`
- ✅ Выполняет команды из него
- ❌ Но падает на `cd flower-shop && npm ci`

## 🔍 Анализ ошибки

```
npm error command failed
npm error command sh -c cd flower-shop && npm ci
```

**Проблема**: Команда `cd flower-shop && npm ci` не выполняется

## 🔧 Решения

### Решение 1: Используйте упрощенный package.json

Замените `package.json` на `package-simple.json`:

```bash
# В Timeweb Cloud используйте:
Build Command: npm run test
Start Command: npm run start
```

### Решение 2: Используйте прямые команды

**Build Command:**
```bash
ls -la && pwd && cd flower-shop && ls -la && npm ci && npm run build
```

**Start Command:**
```bash
cd flower-shop && npm start
```

### Решение 3: Используйте скрипт

**Build Command:**
```bash
chmod +x start.sh && ./start.sh
```

**Start Command:**
```bash
chmod +x start.sh && ./start.sh
```

## 📁 Альтернативные файлы

У вас есть несколько вариантов:

1. **`package.json`** - текущий, с расширенными командами
2. **`package-simple.json`** - упрощенный, использует `start.sh`
3. **`start.sh`** - bash скрипт с проверками
4. **`start.bat`** - Windows скрипт

## 🎯 Рекомендуемый план

### Шаг 1: Попробуйте упрощенный package.json
```bash
# Переименуйте файлы
mv package.json package-backup.json
mv package-simple.json package.json
```

### Шаг 2: В Timeweb Cloud
- Build Command: `npm run build`
- Start Command: `npm run start`

### Шаг 3: Если не работает
Используйте прямые команды:
- Build: `ls -la && cd flower-shop && npm ci && npm run build`
- Start: `cd flower-shop && npm start`

## 🚨 Диагностика

Для диагностики используйте:
```bash
# В Build Command
ls -la && pwd && find . -name "package.json" && echo "=== DIRS ===" && find . -type d
```

## 📞 Если ничего не помогает

1. **Обратитесь в поддержку Timeweb** с описанием проблемы
2. **Используйте локальную сборку**:
   - Запустите `build-for-timeweb.bat`
   - Загрузите образ в registry
   - Используйте "Pre-built image"

## 🎉 Ожидаемый результат

После исправления Timeweb должен:
1. Найти `package.json` ✅ (уже работает)
2. Выполнить команды сборки ✅ (уже работает)
3. Успешно установить зависимости ✅ (нужно исправить)
4. Собрать приложение ✅
5. Запустить на порту 3000 ✅

---

**Статус**: 75% решено - осталось исправить команду `npm ci`
