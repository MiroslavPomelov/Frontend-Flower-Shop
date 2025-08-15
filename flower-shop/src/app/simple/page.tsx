export default function SimplePage() {
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
      <p style={{ fontSize: '1.5rem', marginBottom: '1rem' }}>
        Максимально простая страница
      </p>
      <p style={{ fontSize: '1rem', color: '#ec4899' }}>
        Без Chakra UI, без роутера, без сложностей
      </p>
      <div style={{ 
        marginTop: '3rem', 
        padding: '1rem', 
        backgroundColor: '#2d3748', 
        borderRadius: '8px',
        textAlign: 'center'
      }}>
        <p style={{ marginBottom: '1rem' }}>✅ Только React</p>
        <p style={{ marginBottom: '1rem' }}>✅ Только inline стили</p>
        <p style={{ marginBottom: '1rem' }}>✅ Никаких зависимостей</p>
        <p>✅ Должна работать!</p>
      </div>
    </div>
  );
}
