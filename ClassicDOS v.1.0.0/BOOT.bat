@echo off
title ClassicDOS Boot Sequence
echo ============================================
echo   ClassicDOS v1.0.0 - Boot Module
echo ============================================
echo.

:EOS_MESSAGE
color 04
:EOS_MESSAGE
COLOR 04
echo ************************************
echo *  ClassicDOS v1.0.0 — END OF LIFE  *
echo         System is Locked.
echo ************************************
echo.
echo This version is no longer supported.
echo Upgrade is REQUIRED to continue.
echo.
pause
goto UPGRADE


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


