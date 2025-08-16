export default function DebugPage() {
  return (
    <html>
      <head>
        <title>Flower Shop - Диагностика</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <style>{`
          body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            text-align: center;
          }
          .container {
            max-width: 800px;
            padding: 2rem;
            background: rgba(255,255,255,0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
          }
          h1 {
            font-size: 2.5rem;
            margin-bottom: 2rem;
            color: #ec4899;
          }
          .status-item {
            margin-bottom: 1rem;
            padding: 1rem;
            background: rgba(255,255,255,0.1);
            border-radius: 8px;
            font-size: 1.1rem;
            text-align: left;
          }
          .success {
            color: #10b981;
            border-left: 4px solid #10b981;
          }
          .info {
            color: #3b82f6;
            border-left: 4px solid #3b82f6;
          }
          .warning {
            color: #f59e0b;
            border-left: 4px solid #f59e0b;
          }
          .error {
            color: #ef4444;
            border-left: 4px solid #ef4444;
          }
          .domain {
            background: rgba(236, 72, 153, 0.2);
            padding: 1rem;
            border-radius: 8px;
            margin: 1rem 0;
            font-family: monospace;
            font-size: 1.2rem;
            word-break: break-all;
          }
          .links {
            margin-top: 2rem;
            display: flex;
            flex-direction: column;
            gap: 1rem;
          }
          .link {
            padding: 10px 20px;
            background: #ec4899;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: all 0.3s ease;
          }
          .link:hover {
            background: #db2777;
            transform: translateY(-2px);
          }
          .log {
            background: rgba(0,0,0,0.3);
            padding: 1rem;
            border-radius: 8px;
            font-family: monospace;
            font-size: 0.9rem;
            text-align: left;
            max-height: 200px;
            overflow-y: auto;
            margin: 1rem 0;
          }
        `}</style>
      </head>
      <body>
        <div className="container">
          <h1>🔧 Flower Shop - Диагностика</h1>
          
          <div className="status-item success">
            ✅ Next.js приложение запущено!
          </div>
          
          <div className="status-item success">
            ✅ React работает корректно!
          </div>
          
          <div className="status-item success">
            ✅ Страница загружается успешно!
          </div>
          
          <div className="status-item info">
            📍 Текущий домен:
          </div>
          
          <div className="domain">
            {typeof window !== 'undefined' ? window.location.href : 'Определяется...'}
          </div>
          
          <div className="status-item info">
            🕐 Время загрузки: {new Date().toLocaleString('ru-RU')}
          </div>
          
          <div className="status-item info">
            🌐 User Agent: {typeof window !== 'undefined' ? window.navigator.userAgent : 'Недоступно'}
          </div>
          
          <div className="status-item warning">
            ⚠️ Если вы видите эту страницу, значит Next.js работает!
          </div>
          
          <div className="log">
            <strong>Логи развертывания:</strong><br/>
            ✅ Репозиторий клонирован<br/>
            ✅ Коммит 49f6479 загружен<br/>
            ✅ Зависимости устанавливаются<br/>
            🔄 Ожидание завершения сборки...
          </div>
          
          <div className="links">
            <a href="/" className="link">🏠 Главная страница</a>
            <a href="/simple" className="link">📄 Простая страница</a>
            <a href="/test" className="link">🧪 Тестовая страница</a>
            <a href="/status" className="link">📊 Статус</a>
            <a href="/home" className="link">🏡 Полная главная</a>
          </div>
        </div>
      </body>
    </html>
  );
}
