@echo off
echo Building Docker image for Timeweb Cloud...

echo.
echo 1. Building image...
docker build -t flower-shop .

if %ERRORLEVEL% EQU 0 (
    echo ✅ Build successful!
    
    echo.
    echo 2. Testing image...
    echo Starting container for testing...
    docker run -d --name flower-shop-test -p 3000:3000 flower-shop
    
    echo.
    echo 3. Waiting for container to start...
    timeout /t 5 /nobreak >nul
    
    echo.
    echo 4. Checking container status...
    docker ps --filter name=flower-shop-test
    
    echo.
    echo 5. Container logs:
    docker logs flower-shop-test
    
    echo.
    echo ========================================
    echo NEXT STEPS FOR TIMEWEB:
    echo ========================================
    echo 1. Stop test container: docker stop flower-shop-test
    echo 2. Remove test container: docker rm flower-shop-test
    echo 3. Tag image: docker tag flower-shop your-registry/flower-shop:latest
    echo 4. Push to registry: docker push your-registry/flower-shop:latest
    echo 5. In Timeweb: Choose "Pre-built image"
    echo ========================================
    
    echo.
    echo Test container is running on http://localhost:3000
    echo.
    echo To stop: docker stop flower-shop-test
    echo To remove: docker rm flower-shop-test
    
) else (
    echo ❌ Build failed! Check the errors above.
)

echo.
pause
