@echo off
echo Testing Docker build for Flower Shop...

echo Stopping existing containers...
docker stop flower-shop 2>nul
docker rm flower-shop 2>nul

echo Removing existing image...
docker rmi flower-shop 2>nul

echo Building new image...
docker build -t flower-shop .

if %ERRORLEVEL% EQU 0 (
    echo Build successful! Starting container...
    docker run -d --name flower-shop -p 3000:3000 flower-shop
    
    echo.
    echo Flower Shop is running on http://localhost:3000
    echo.
    echo To stop: docker stop flower-shop
    echo To view logs: docker logs flower-shop
    echo To enter container: docker exec -it flower-shop sh
) else (
    echo Build failed! Check the errors above.
    pause
)
