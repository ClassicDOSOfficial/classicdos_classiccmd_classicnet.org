@echo off
title ClassicDOS System Check
setlocal

set "systemFolder=%~dp0SYSTEM"

echo [CHECK] Validating ClassicDOS SYSTEM folder...
echo.

rem === Check if SYSTEM folder exists ===
if not exist "%systemFolder%" (
    echo ❌ SYSTEM folder missing!
    call "%~dp0panic.bat"
    exit /b 1
)

rem === Check for VALIDATE.BAT inside SYSTEM ===
if not exist "%systemFolder%\VALIDATE.BAT" (
    echo ❌ VALIDATE.BAT missing inside SYSTEM!
    call "%~dp0panic.bat"
    exit /b 1
)

echo ✅ SYSTEM folder and VALIDATE.BAT detected.
echo [CHECK] ClassicDOS integrity confirmed.
pause
exit /b 0