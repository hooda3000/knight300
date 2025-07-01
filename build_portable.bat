@echo off
chcp 65001 >nul
title 🔧 Building Knight300 Portable EXE
echo ================================
echo 🚀 Starting Knight300 Portable Build...
echo ================================

cd backend
echo [1/3] 🧠 Installing backend dependencies...
pip install -r ../requirements.txt
echo [1/3] ⚙️ Building backend as EXE...
pyinstaller --noconfirm --onefile main.py
move /Y dist\main.exe ..\frontend\backend\Knight300_Backend.exe
cd ..

cd frontend
echo [2/3] 💻 Installing frontend dependencies...
npm install

echo [3/3] 📦 Building final EXE (Knight300_Portable.exe)...
npx electron-builder --windows portable

echo.
echo ✅ Build complete!
echo 🟢 You will find Knight300_Portable.exe inside: frontend\dist
pause
