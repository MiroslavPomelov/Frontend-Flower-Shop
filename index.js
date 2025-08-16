// Простой сервер для Timeweb Cloud
// Этот файл будет запущен их системой

const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = process.env.PORT || 3000;

// Создаем простой HTTP сервер
const server = http.createServer((req, res) => {
    console.log(`🌸 Запрос: ${req.method} ${req.url}`);
    
    // Обрабатываем CORS
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    
    if (req.method === 'OPTIONS') {
        res.writeHead(200);
        res.end();
        return;
    }
    
    let filePath = req.url === '/' ? '/index.html' : req.url;
    let fullPath = path.join(__dirname, 'flower-shop', filePath);
    
    console.log(`🔍 Ищем файл: ${fullPath}`);
    
    // Проверяем существование файла
    if (fs.existsSync(fullPath) && fs.statSync(fullPath).isFile()) {
        const ext = path.extname(fullPath);
        const contentType = {
            '.html': 'text/html; charset=utf-8',
            '.css': 'text/css',
            '.js': 'text/javascript',
            '.png': 'image/png',
            '.jpg': 'image/jpeg',
            '.gif': 'image/gif',
            '.ico': 'image/x-icon',
            '.json': 'application/json'
        }[ext] || 'text/plain';
        
        console.log(`✅ Файл найден: ${filePath} (${contentType})`);
        
        try {
            const content = fs.readFileSync(fullPath);
            res.writeHead(200, { 'Content-Type': contentType });
            res.end(content);
        } catch (error) {
            console.error(`❌ Ошибка чтения файла: ${error.message}`);
            res.writeHead(500, { 'Content-Type': 'text/html; charset=utf-8' });
            res.end(`
                <html>
                    <head><title>500 - Ошибка сервера</title></head>
                    <body>
                        <h1>500 - Ошибка сервера</h1>
                        <p>Ошибка при чтении файла: ${error.message}</p>
                        <p>Путь: ${filePath}</p>
                    </body>
                </html>
            `);
        }
    } else {
        console.log(`❌ Файл не найден: ${filePath}`);
        
        // Если файл не найден, показываем главную страницу
        const indexPath = path.join(__dirname, 'flower-shop', 'index.html');
        const reactCopyPath = path.join(__dirname, 'flower-shop', 'react-copy.html');
        
        // Сначала пробуем найти react-copy.html для главной страницы
        if (filePath === '/' && fs.existsSync(reactCopyPath)) {
            console.log(`🔄 Показываем React копию для главной страницы`);
            res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8' });
            res.end(fs.readFileSync(reactCopyPath));
        } else if (fs.existsSync(indexPath)) {
            console.log(`🔄 Показываем главную страницу вместо ${filePath}`);
            res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8' });
            res.end(fs.readFileSync(indexPath));
        } else {
            console.log(`❌ Главная страница тоже не найдена!`);
            res.writeHead(404, { 'Content-Type': 'text/html; charset=utf-8' });
            res.end(`
                <html>
                    <head><title>404 - Страница не найдена</title></head>
                    <body>
                        <h1>404 - Страница не найдена</h1>
                        <p>Timeweb Cloud успешно запустил наш сервер!</p>
                        <p>Но файл <strong>${filePath}</strong> не найден.</p>
                        <p>Доступные файлы:</p>
                        <ul>
                            <li><a href="/">Главная страница</a></li>
                            <li><a href="/simple-test.html">Простой тест</a></li>
                            <li><a href="/cart.html">Корзина</a></li>
                            <li><a href="/login.html">Вход</a></li>
                        </ul>
                    </body>
                </html>
            `);
        }
    }
});

server.listen(PORT, () => {
    console.log('🚀 Flower Shop сервер запущен на Timeweb Cloud!');
    console.log(`🌐 Порт: ${PORT}`);
    console.log('📁 Проверяем доступные файлы:');
    
    const flowerShopPath = path.join(__dirname, 'flower-shop');
    if (fs.existsSync(flowerShopPath)) {
        const files = fs.readdirSync(flowerShopPath);
        console.log('📂 Файлы в flower-shop:', files);
        
        // Показываем HTML файлы отдельно
        const htmlFiles = files.filter(file => file.endsWith('.html'));
        console.log('🌸 HTML файлы:', htmlFiles);
        
        // Проверяем основные страницы
        const mainPages = ['index.html', 'cart.html', 'login.html', 'profile.html', 'checkout.html'];
        mainPages.forEach(page => {
            const exists = files.includes(page);
            console.log(`${exists ? '✅' : '❌'} ${page}: ${exists ? 'найден' : 'НЕ найден'}`);
        });
    } else {
        console.log('❌ Папка flower-shop не найдена!');
    }
    
    console.log('🌐 Сервер готов принимать запросы!');
    console.log('📱 Проверьте ваш домен Timeweb Cloud');
});

// Обработка ошибок
server.on('error', (err) => {
    console.error('❌ Ошибка сервера:', err);
});

process.on('SIGINT', () => {
    console.log('🛑 Сервер останавливается...');
    server.close(() => {
        console.log('✅ Сервер остановлен');
        process.exit(0);
    });
});
