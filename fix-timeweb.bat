@echo off
echo Fixing Timeweb Cloud deployment issue...

echo.
echo Current problem: Timeweb ignores our Dockerfile
echo Solution: Create a more explicit configuration

echo.
echo 1. Checking current files...
if exist Dockerfile (
    echo ✅ Dockerfile found in root
) else (
    echo ❌ Dockerfile not found in root
)

echo.
echo 2. Creating alternative solutions...

echo Creating docker-compose.yml...
if exist docker-compose.yml (
    echo ✅ docker-compose.yml already exists
) else (
    echo ❌ docker-compose.yml not found
)

echo.
echo 3. Alternative deployment methods:

echo.
echo METHOD 1: Use Custom Dockerfile in Timeweb
echo - Select "Custom Dockerfile" in Timeweb
echo - Set path to: Dockerfile
echo - Set context to: . (root)

echo.
echo METHOD 2: Use Build from Source
echo - Select "Build from Source" in Timeweb
echo - Set context to: .
echo - Set build command: cd flower-shop && npm ci && npm run build
echo - Set start command: cd flower-shop && npm start

echo.
echo METHOD 3: Manual Docker build
echo - Build locally: docker build -t flower-shop .
echo - Push to registry
echo - Use pre-built image in Timeweb

echo.
echo ========================================
echo RECOMMENDED SOLUTION:
echo ========================================
echo 1. In Timeweb Cloud, choose "Custom Dockerfile"
echo 2. Set Dockerfile path: Dockerfile
echo 3. Set build context: . (root)
echo 4. Set port: 3000
echo 5. Set environment variables
echo ========================================

echo.
echo Ready to fix Timeweb deployment!
pause
