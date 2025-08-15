export default function SimplePage() {
  return (
    <html>
      <head>
        <title>Flower Shop - Простая страница</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <style>{`
          body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #1a202c;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            text-align: center;
          }
          .container {
            max-width: 500px;
            padding: 2rem;
          }
          h1 {
            font-size: 3rem;
            margin-bottom: 2rem;
            color: #ec4899;
          }
          p {
            font-size: 1.2rem;
            margin-bottom: 1rem;
            line-height: 1.6;
          }
          .status-box {
            margin-top: 3rem;
            padding: 1.5rem;
            background: #2d3748;
            border-radius: 8px;
            border: 1px solid #4a5568;
          }
          .status-item {
            margin-bottom: 0.5rem;
            font-size: 1rem;
          }
          .back-link {
            margin-top: 2rem;
            display: inline-block;
            padding: 10px 20px;
            background: #ec4899;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
          }
          .back-link:hover {
            background: #db2777;
          }
        `}</style>
      </head>
      <body>
        <div className="container">
          <h1>🌸 Flower Shop</h1>
          <p>Максимально простая страница</p>
          <p>Без Chakra UI, без роутера, без сложностей</p>
          
          <div className="status-box">
            <div className="status-item">✅ Только React</div>
            <div className="status-item">✅ Только CSS</div>
            <div className="status-item">✅ Никаких зависимостей</div>
            <div className="status-item">✅ Должна работать!</div>
          </div>
          
          <a href="/" className="back-link">
            ← Назад на главную
          </a>
        </div>
      </body>
    </html>
  );
}
