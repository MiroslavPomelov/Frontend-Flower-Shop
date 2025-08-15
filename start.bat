@echo off
echo Starting Flower Shop Application...
echo Current directory: %CD%
echo Directory contents:
dir

echo Changing to flower-shop directory...
cd flower-shop

echo Installing dependencies...
npm ci

echo Building application...
npm run build

echo Starting application...
npm start
