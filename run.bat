@echo off
title Eng.Mohammed GenerateCode local server
echo Starting local web server on port 3000...
start http://localhost:3000
python -m http.server 3000
if %ERRORLEVEL% neq 0 (
    echo Python failed, trying node/npx...
    npx -y serve . -p 3000
)
pause
