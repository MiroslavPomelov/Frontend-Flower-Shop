'use client';
import React from 'react';

export default function Home() {
  return (
    <html>
      <head>
        <title>Flower Shop - Загрузка...</title>
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
            max-width: 600px;
            padding: 2rem;
          }
          h1 {
            font-size: 3rem;
            margin-bottom: 2rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
          }
          p {
            font-size: 1.2rem;
            margin-bottom: 1rem;
            line-height: 1.6;
          }
          .buttons {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            margin-top: 3rem;
          }
          .btn {
            padding: 15px 30px;
            font-size: 1.1rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s ease;
          }
          .btn-primary {
            background: #ec4899;
            color: white;
          }
          .btn-primary:hover {
            background: #db2777;
            transform: translateY(-2px);
          }
          .btn-secondary {
            background: transparent;
            color: #a855f7;
            border: 2px solid #a855f7;
          }
          .btn-secondary:hover {
            background: #a855f7;
            color: white;
          }
          .btn-success {
            background: transparent;
            color: #38a169;
            border: 2px solid #38a169;
          }
          .btn-success:hover {
            background: #38a169;
            color: white;
          }
          .status {
            margin-top: 2rem;
            padding: 1rem;
            background: rgba(255,255,255,0.1);
            border-radius: 8px;
            font-size: 0.9rem;
          }
        `}</style>
      </head>
      <body>
        <div className="container">
          <h1>🌸 Flower Shop</h1>
          <p>Добро пожаловать в мир прекрасных цветов!</p>
          <p>Next.js + React + TypeScript</p>
          <p style={{color: '#ec4899', fontWeight: 'bold'}}>
            Максимально простая страница без зависимостей
          </p>
          
          <div className="buttons">
            <a href="/home" className="btn btn-primary">
              Перейти к главной странице
            </a>
            <a href="/test" className="btn btn-secondary">
              Тестовая страница
            </a>
            <a href="/simple" className="btn btn-success">
              Максимально простая страница
            </a>
          </div>
          
          <div className="status">
            <p>✅ Страница загружена успешно</p>
            <p>✅ React работает</p>
            <p>✅ Next.js работает</p>
            <p>✅ Стили применяются</p>
          </div>
        </div>
      </body>
    </html>
  );
}
