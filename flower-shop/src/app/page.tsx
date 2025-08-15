'use client';
import React from 'react';

export default function Home() {
  return (
    <div style={{
      minHeight: '100vh',
      backgroundColor: '#1a202c',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      flexDirection: 'column',
      color: 'white',
      fontFamily: 'Arial, sans-serif'
    }}>
      <h1 style={{ fontSize: '3rem', marginBottom: '2rem' }}>
        🌸 Flower Shop
      </h1>
      <p style={{ fontSize: '1.2rem', marginBottom: '3rem', textAlign: 'center' }}>
        Добро пожаловать в мир прекрасных цветов
      </p>
      <p style={{ fontSize: '1rem', marginBottom: '3rem', color: '#ec4899', textAlign: 'center' }}>
        Next.js + React + TypeScript
      </p>
      <div style={{ display: 'flex', gap: '1rem', flexDirection: 'column' }}>
        <a 
          href="/home"
          style={{
            padding: '12px 24px',
            backgroundColor: '#ec4899',
            color: 'white',
            border: 'none',
            borderRadius: '8px',
            fontSize: '1rem',
            cursor: 'pointer',
            fontWeight: 'bold',
            textDecoration: 'none',
            textAlign: 'center'
          }}
        >
          Перейти к главной странице
        </a>
        <a 
          href="/test"
          style={{
            padding: '12px 24px',
            backgroundColor: 'transparent',
            color: '#a855f7',
            border: '2px solid #a855f7',
            borderRadius: '8px',
            fontSize: '1rem',
            cursor: 'pointer',
            fontWeight: 'bold',
            textDecoration: 'none',
            textAlign: 'center'
          }}
        >
          Тестовая страница
        </a>
        <a 
          href="/simple"
          style={{
            padding: '12px 24px',
            backgroundColor: 'transparent',
            color: '#38a169',
            border: '2px solid #38a169',
            borderRadius: '8px',
            fontSize: '1rem',
            cursor: 'pointer',
            fontWeight: 'bold',
            textDecoration: 'none',
            textAlign: 'center'
          }}
        >
          Максимально простая страница
        </a>
      </div>
    </div>
  );
}
