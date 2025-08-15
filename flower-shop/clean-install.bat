@echo off
echo Cleaning and reinstalling dependencies...

echo Removing node_modules and package-lock.json...
rmdir /s /q node_modules 2>nul
del package-lock.json 2>nul

echo Removing .next folder...
rmdir /s /q .next 2>nul

echo Installing dependencies...
npm install

echo Done! Now try building again.
pause
