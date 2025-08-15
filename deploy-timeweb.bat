@echo off
echo ========================================
echo TIMEWEB CLOUD DEPLOYMENT GUIDE
echo ========================================
echo.

echo This script will guide you through deploying
echo Flower Shop to Timeweb Cloud.
echo.

echo ========================================
echo STEP 1: CHECK PROJECT FILES
echo ========================================
echo Running project check...
call check-all.bat

echo.
echo ========================================
echo STEP 2: TIMEWEB CLOUD SETUP
echo ========================================
echo.
echo In Timeweb Cloud panel:
echo.
echo 1. Create new container
echo 2. Choose "Build from Source" (NOT Docker Container!)
echo 3. Set Git repository: https://github.com/MiroslavPomelov/Frontend-Flower-Shop.git
echo 4. Set branch: main
echo 5. Set build context: . (root)
echo.
echo ========================================
echo STEP 3: BUILD COMMANDS
echo ========================================
echo.
echo Set these commands in Timeweb:
echo.
echo BUILD COMMAND:
echo cd flower-shop && npm ci && npm run build
echo.
echo START COMMAND:
echo cd flower-shop && npm start
echo.
echo ========================================
echo STEP 4: ENVIRONMENT VARIABLES
echo ========================================
echo.
echo Add these environment variables:
echo.
echo NODE_ENV=production
echo PORT=3000
echo HOSTNAME=0.0.0.0
echo.
echo ========================================
echo STEP 5: PORT SETTINGS
echo ========================================
echo.
echo Set port: 3000
echo Protocol: HTTP
echo.
echo ========================================
echo STEP 6: ALTERNATIVE SOLUTIONS
echo ========================================
echo.
echo If "Build from Source" doesn't work:
echo.
echo OPTION A: Local Docker build
echo 1. Run: build-for-timeweb.bat
echo 2. Push image to registry
echo 3. Use "Pre-built image" in Timeweb
echo.
echo OPTION B: Alternative hosting
echo - Vercel (excellent Next.js support)
echo - Netlify (simple deployment)
echo - Railway (modern platform)
echo - Render (free hosting)
echo.
echo ========================================
echo DEPLOYMENT READY!
echo ========================================
echo.
echo Your project is configured for Timeweb Cloud.
echo Follow the steps above to deploy.
echo.
echo For detailed instructions, see:
echo - TIMEWEB_FINAL_SOLUTION.md
echo - TIMEWEB_ROOT_SETUP.md
echo - README.md
echo.
pause
