Write-Host "Building Docker image for Flower Shop..." -ForegroundColor Green

# Остановить и удалить существующие контейнеры
docker stop flower-shop 2>$null
docker rm flower-shop 2>$null

# Удалить существующий образ
docker rmi flower-shop 2>$null

# Собрать новый образ
Write-Host "Building image..." -ForegroundColor Yellow
docker build -t flower-shop .

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Build successful!" -ForegroundColor Green
    Write-Host "Starting container..." -ForegroundColor Yellow
    docker run -d --name flower-shop -p 3000:3000 flower-shop
    
    Write-Host "🌺 Flower Shop is running on http://localhost:3000" -ForegroundColor Green
    Write-Host "To stop: docker stop flower-shop" -ForegroundColor Cyan
    Write-Host "To view logs: docker logs flower-shop" -ForegroundColor Cyan
} else {
    Write-Host "❌ Build failed!" -ForegroundColor Red
    exit 1
}
