@echo off
echo ========================================
echo FLOWER SHOP PROJECT CHECK
echo ========================================
echo.

echo Checking project structure...
echo.

set missing=0
set total=0

echo 1. Root files:
if exist Dockerfile (
    echo ✅ Dockerfile
    set /a total+=1
) else (
    echo ❌ Dockerfile - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist .dockerignore (
    echo ✅ .dockerignore
    set /a total+=1
) else (
    echo ❌ .dockerignore - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist docker-compose.yml (
    echo ✅ docker-compose.yml
    set /a total+=1
) else (
    echo ❌ docker-compose.yml - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist README.md (
    echo ✅ README.md
    set /a total+=1
) else (
    echo ❌ README.md - MISSING!
    set /a missing+=1
    set /a total+=1
)

echo.
echo 2. Scripts:
if exist build-for-timeweb.bat (
    echo ✅ build-for-timeweb.bat
    set /a total+=1
) else (
    echo ❌ build-for-timeweb.bat - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist fix-timeweb.bat (
    echo ✅ fix-timeweb.bat
    set /a total+=1
) else (
    echo ❌ fix-timeweb.bat - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist verify-files.bat (
    echo ✅ verify-files.bat
    set /a total+=1
) else (
    echo ❌ verify-files.bat - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist check-all.bat (
    echo ✅ check-all.bat
    set /a total+=1
) else (
    echo ❌ check-all.bat - MISSING!
    set /a missing+=1
    set /a total+=1
)

echo.
echo 3. Documentation:
if exist TIMEWEB_FINAL_SOLUTION.md (
    echo ✅ TIMEWEB_FINAL_SOLUTION.md
    set /a total+=1
) else (
    echo ❌ TIMEWEB_FINAL_SOLUTION.md - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist TIMEWEB_ROOT_SETUP.md (
    echo ✅ TIMEWEB_ROOT_SETUP.md
    set /a total+=1
) else (
    echo ❌ TIMEWEB_ROOT_SETUP.md - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist TIMEWEB_DEPLOYMENT.md (
    echo ✅ TIMEWEB_DEPLOYMENT.md
    set /a total+=1
) else (
    echo ❌ TIMEWEB_DEPLOYMENT.md - MISSING!
    set /a missing+=1
    set /a total+=1
)

echo.
echo 4. Flower Shop project:
if exist flower-shop\package.json (
    echo ✅ flower-shop\package.json
    set /a total+=1
) else (
    echo ❌ flower-shop\package.json - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist flower-shop\next.config.js (
    echo ✅ flower-shop\next.config.js
    set /a total+=1
) else (
    echo ❌ flower-shop\next.config.js - MISSING!
    set /a missing+=1
    set /a total+=1
)

if exist flower-shop\src\app (
    echo ✅ flower-shop\src\app
    set /a total+=1
) else (
    echo ❌ flower-shop\src\app - MISSING!
    set /a missing+=1
    set /a total+=1
)

echo.
echo ========================================
echo SUMMARY:
echo ========================================
echo Total files: %total%
echo Missing: %missing%
echo Present: %total%-%missing%

if %missing% EQU 0 (
    echo.
    echo 🎉 ALL FILES ARE PRESENT! Project is ready for deployment.
    echo.
    echo NEXT STEPS:
    echo 1. Commit all changes to Git
    echo 2. Push to repository
    echo 3. In Timeweb Cloud: Choose "Build from Source"
    echo 4. Set build command: cd flower-shop && npm ci && npm run build
    echo 5. Set start command: cd flower-shop && npm start
    echo 6. Set port: 3000
    echo 7. Add environment variables
) else (
    echo.
    echo ❌ MISSING %missing% FILE(S)! Fix before deployment.
    echo.
    echo TROUBLESHOOTING:
    echo - Check file paths
    echo - Verify Git repository structure
    echo - Run individual check scripts
)

echo ========================================
echo.
pause
