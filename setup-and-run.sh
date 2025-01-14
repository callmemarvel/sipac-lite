#!/bin/bash

# Install server dependencies
cd server
npm install

# Install client dependencies
cd ../client
npm install

# Start development servers
echo "Starting servers..."

# Terminal 1: Start backend server
cd ../server
npm run dev &

# Terminal 2: Start frontend server
cd ../client
npm start &

echo "Servers started! Access the application at http://localhost:3000"
