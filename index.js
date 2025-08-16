// Простой сервер для Timeweb Cloud
// Этот файл будет запущен их системой

const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = process.env.PORT || 3000;

// Создаем простой HTTP сервер
const server = http.createServer((req, res) => {
    console.log(`🌸 Запрос: ${req.method} ${req.url}`);
    
    let filePath = req.url === '/' ? '/index.html' : req.url;
    filePath = path.join(__dirname, 'flower-shop', filePath);
    
    // Проверяем существование файла
    if (fs.existsSync(filePath) && fs.statSync(filePath).isFile()) {
        const ext = path.extname(filePath);
        const contentType = {
            '.html': 'text/html',
            '.css': 'text/css',
            '.js': 'text/javascript',
            '.png': 'image/png',
            '.jpg': 'image/jpeg',
            '.gif': 'image/gif',
            '.ico': 'image/x-icon'
        }[ext] || 'text/plain';
        
        res.writeHead(200, { 'Content-Type': contentType });
        res.end(fs.readFileSync(filePath));
    } else {
        // Если файл не найден, показываем главную страницу
        const indexPath = path.join(__dirname, 'flower-shop', 'index.html');
        if (fs.existsSync(indexPath)) {
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(fs.readFileSync(indexPath));
        } else {
            res.writeHead(404, { 'Content-Type': 'text/html' });
            res.end(`
                <html>
                    <head><title>404 - Страница не найдена</title></head>
                    <body>
                        <h1>404 - Страница не найдена</h1>
                        <p>Timeweb Cloud успешно запустил наш сервер!</p>
                        <p>Но файлы не найдены. Проверьте структуру проекта.</p>
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
    } else {
        console.log('❌ Папка flower-shop не найдена!');
    }
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
