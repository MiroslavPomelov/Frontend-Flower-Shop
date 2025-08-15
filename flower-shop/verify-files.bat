@echo off
echo Verifying project files for Timeweb Cloud deployment...

echo.
echo Checking critical files...
set missing=0

if exist package.json (
    echo ✅ package.json
) else (
    echo ❌ package.json - MISSING!
    set /a missing+=1
)

if exist package-lock.json (
    echo ✅ package-lock.json
) else (
    echo ❌ package-lock.json - MISSING!
    set /a missing+=1
)

if exist next.config.js (
    echo ✅ next.config.js
) else (
    echo ❌ next.config.js - MISSING!
    set /a missing+=1
)

if exist tsconfig.json (
    echo ✅ tsconfig.json
) else (
    echo ❌ tsconfig.json - MISSING!
    set /a missing+=1
)

if exist tailwind.config.js (
    echo ✅ tailwind.config.js
) else (
    echo ❌ tailwind.config.js - MISSING!
    set /a missing+=1
)

if exist postcss.config.mjs (
    echo ✅ postcss.config.mjs
) else (
    echo ❌ postcss.config.mjs - MISSING!
    set /a missing+=1
)

if exist eslint.config.mjs (
    echo ✅ eslint.config.mjs
) else (
    echo ❌ eslint.config.mjs - MISSING!
    set /a missing+=1
)

if exist src\app (
    echo ✅ src/app directory
) else (
    echo ❌ src/app directory - MISSING!
    set /a missing+=1
)

if exist public (
    echo ✅ public directory
) else (
    echo ❌ public directory - MISSING!
    set /a missing+=1
)

if exist Dockerfile (
    echo ✅ Dockerfile
) else (
    echo ❌ Dockerfile - MISSING!
    set /a missing+=1
)

echo.
echo ========================================
echo SUMMARY:
echo ========================================
if %missing% EQU 0 (
    echo ✅ All files are present! Ready for deployment.
    echo.
    echo NEXT STEPS:
    echo 1. Commit all changes to Git
    echo 2. In Timeweb Cloud, set context to: flower-shop/
    echo 3. Use Dockerfile.timeweb or custom Dockerfile
    echo 4. Set build command: npm run build
    echo 5. Set start command: npm start
) else (
    echo ❌ Missing %missing% file(s)! Fix before deployment.
    echo.
    echo TROUBLESHOOTING:
    echo - Run: clean-install.bat
    echo - Check file paths
    echo - Verify Git repository structure
)
echo ========================================

echo.
pause
