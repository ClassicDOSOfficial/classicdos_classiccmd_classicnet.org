@echo off
title ClassicDOS Boot Sequence
echo ============================================
echo   ClassicDOS v1.0.0 - Boot Module
echo ============================================
echo.
color 1F
:EOS_WARNING
color 04
echo ===============================================
echo      ClassicDOS v.1.0.1 will end on 
echo        01.01.2026/01/01/26.
echo ===============================================
echo.
echo ClassicDOS v.1.0.1 is sadly ending on 01/01/26.
echo Please Upgrade to ClassicDOS v.1.0.2™.
goto upgrade
pause
:boot 
echo (START) Checking C:\ for any Errors...
timeout /t 1 >nul
echo (CHKDSK) Checking for DESKTOP.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM/...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\ABOUT.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\COPY.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\CREDITS.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\DATE.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\DIR.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\MD.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\MINESWEEPER.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\MKDIR.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\README.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\RESETKEY.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\RD.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\RMDIR.BAT..
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\SYSINFO.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\TIME.BAT
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\TYPE.BAT..
timeout /t 1 >nul
echo (CHKDSK) Checking for SYSTEM\VALIDATE.BAT...
timeout /t 1 >nul
echo (CHKDSK) Checking for InstallerWorkspace/...
timeout /t 1 >nul
echo (CHKDSK) Checking for InstallerWorkspace\ClassicDOS v.1.0.1_Setup.exe...
timeout /t 1 >nul
echo (OK) ✅ Starting ClassicDOS...

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
