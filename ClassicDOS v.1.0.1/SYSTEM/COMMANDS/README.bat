@echo off
cls
echo ================================================
echo ClassicDOS README Generator
echo ================================================
echo.

:: Delete old README if it exists
if exist README.txt del /f /q README.txt

:: Write README content into README.txt
(
echo ====================================================
echo              ClassicDOS v1.0.0
echo        A Retro-Inspired DOS Environment
echo ====================================================
echo.
echo Author: Jan
echo Release: v1.0.0
echo.
echo ----------------------------------------------------
echo FIRST-TIME SETUP
echo ----------------------------------------------------
echo When opening ClassicDOS for the first time,
echo you MUST run SHELL.BAT to access commands.
echo BOOT.BAT handles product key validation,
echo but SHELL.BAT is the main entry point.
echo.
echo ----------------------------------------------------
echo DIRECTORY STRUCTURE
echo ----------------------------------------------------
echo ClassicDOS\
echo   BOOT.BAT        - Boot sequence with product key check
echo   SHELL.BAT       - Main command shell (dispatcher)
echo   SYSTEM\
echo     KEY.TXT       - Saved product key
echo     VALIDATE.BAT  - Product key validation logic
echo     COMMANDS\
echo       ABOUT.BAT      - Show system info
echo       RESETKEY.BAT   - Reset product key
echo       DATE.BAT       - Show current date
echo       TIME.BAT       - Show current time
echo       MKDIR.BAT      - Create directory
echo       RMDIR.BAT      - Remove directory
echo       DIR.BAT        - List files
echo       COPY.BAT       - Copy files
echo       TYPE.BAT       - View text file contents
echo       SYSINFO.BAT    - Fake hardware info
echo       CREDITS.BAT    - Show credits
echo       MINESWEEPER.BAT- Play the game
echo       README.BAT     - Generate and open this manual
echo.
echo ----------------------------------------------------
echo NOTES
echo ----------------------------------------------------
echo Product key required: CLASSIC-77BBM-XX430-9999-BBMSA
echo After 3 failed attempts, system locks until restart.
echo.
echo Always launch SHELL.BAT to access commands.
echo ====================================================
) > README.txt

echo README.txt has been generated.
echo Opening README.txt in Notepad...
start notepad README.txt