#!/bin/bash

echo "Starting Flower Shop Application..."
echo "Current directory: $(pwd)"
echo "Directory contents:"
ls -la

echo "Changing to flower-shop directory..."
cd flower-shop

echo "Installing dependencies..."
npm ci

echo "Building application..."
npm run build

echo "Starting application..."
npm start
