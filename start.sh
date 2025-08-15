#!/bin/bash

echo "========================================"
echo "🚀 FLOWER SHOP - STARTUP SCRIPT"
echo "========================================"
echo.

echo "Current directory: $(pwd)"
echo "Directory contents:"
ls -la

echo.
echo "Checking if flower-shop directory exists..."
if [ -d "flower-shop" ]; then
    echo "✅ flower-shop directory found"
    echo "flower-shop contents:"
    ls -la flower-shop/
else
    echo "❌ flower-shop directory NOT found!"
    echo "Available directories:"
    find . -maxdepth 1 -type d
    exit 1
fi

echo.
echo "Checking if package.json exists in flower-shop..."
if [ -f "flower-shop/package.json" ]; then
    echo "✅ package.json found in flower-shop"
else
    echo "❌ package.json NOT found in flower-shop!"
    exit 1
fi

echo.
echo "Changing to flower-shop directory..."
cd flower-shop

echo "Current directory after cd: $(pwd)"
echo "Directory contents after cd:"
ls -la

echo.
echo "Installing dependencies..."
npm ci

if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully"
else
    echo "❌ Failed to install dependencies"
    exit 1
fi

echo.
echo "Building application..."
npm run build

if [ $? -eq 0 ]; then
    echo "✅ Application built successfully"
else
    echo "❌ Failed to build application"
    exit 1
fi

echo.
echo "Starting application..."
npm start
