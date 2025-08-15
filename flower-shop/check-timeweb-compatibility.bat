@echo off
echo Checking Timeweb Cloud compatibility...

echo.
echo 1. Checking Dockerfile...
if exist Dockerfile (
    echo ✅ Dockerfile found
    echo    - WORKDIR: /opt/build
    echo    - Build command: npm run build
    echo    - Start command: npm start
) else (
    echo ❌ Dockerfile not found!
)

echo.
echo 2. Checking package.json...
if exist package.json (
    echo ✅ package.json found
    echo    - Build script: npm run build
    echo    - Start script: npm start
) else (
    echo ❌ package.json not found!
)

echo.
echo 3. Checking next.config.js...
if exist next.config.js (
    echo ✅ next.config.js found
    echo    - No output: standalone
) else (
    echo ❌ next.config.js not found!
)

echo.
echo 4. Checking project structure...
if exist src\app (
    echo ✅ src/app directory found
) else (
    echo ❌ src/app directory not found!
)

echo.
echo 5. Checking dependencies...
if exist node_modules (
    echo ✅ node_modules found
) else (
    echo ❌ node_modules not found - run npm install first
)

echo.
echo ========================================
echo CRITICAL FOR TIMEWEB CLOUD:
echo ========================================
echo 1. Context build path: flower-shop/
echo 2. Dockerfile path: flower-shop/Dockerfile
echo 3. Port: 3000
echo 4. Environment: NODE_ENV=production
echo ========================================

echo.
echo Ready for Timeweb Cloud deployment!
pause
