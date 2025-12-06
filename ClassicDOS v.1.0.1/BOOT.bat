@echo off
title ClassicDOS Boot Sequence
echo ============================================
echo   ClassicDOS v1.0.0 - Boot Module
echo ============================================
echo.

:: Call the validation script to check product key
call SYSTEM\VALIDATE.BAT

:: Check the exit code directly
if %errorlevel%==0 (
    echo Boot successful. Launching ClassicDOS Shell...
    echo.
    call SHELL.BAT
) else (
    echo Boot aborted. Invalid product key.
    pause
    exit /b
)