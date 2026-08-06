@echo off
chcp 65001 > nul
cd /d "%~dp0"
echo.
echo   WELCO site - local preview
echo   http://localhost:8080  (Ctrl+C to stop)
echo.
start "" http://localhost:8080
python -m http.server 8080
