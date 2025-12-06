@ECHO OFF
TITLE ClassicDOS v1.0.1 Desktop
COLOR 1F

REM ====== LOCK FLAG CHECK ======
IF EXIST "%~dp0LOCKED.FLAG" (
  COLOR 4
  ECHO ERROR 668: OPERATING SYSTEM IS LOCKED,
  ECHO PLEASE WAIT UNTIL UNLOCKED BY THE CREATOR.
  PAUSE
  EXIT
)

REM ====== DESKTOP MENU ======
:MENU
CLS
ECHO ============================================
ECHO        ClassicDOS v1.0.1 — DESKTOP
ECHO ============================================
ECHO.
ECHO  [1] Open SYSINFO
ECHO  [2] Play MINESWEEPER
ECHO  [3] View README
ECHO  [4] File Manager (DIR/MKDIR/RMDIR)
ECHO  [5] Date & Time
ECHO  [6] Exit Desktop
ECHO.
SET /P CHOICE=Select option (1-6): 

IF "%CHOICE%"=="1" CALL SYSINFO.BAT
IF "%CHOICE%"=="2" MINESWEEPER.bat
IF "%CHOICE%"=="3" CALL TYPE README.BAT
IF "%CHOICE%"=="4" CALL taskmgr
IF "%CHOICE%"=="5" GOTO DATETIME
IF "%CHOICE%"=="6" EXIT

GOTO MENU

:FILEMANAGER
CLS
ECHO --- File Manager ---
ECHO [A] DIR
ECHO [B] MKDIR
ECHO [C] RMDIR
ECHO [D] Back
SET /P FMCHOICE=Select option: 
IF /I "%FMCHOICE%"=="A" DIR
IF /I "%FMCHOICE%"=="B" (
  SET /P NEWDIR=Enter folder name: 
  MKDIR "%NEWDIR%"
)
IF /I "%FMCHOICE%"=="C" (
  SET /P DELDIR=Enter folder name: 
  RMDIR "%DELDIR%"
)
IF /I "%FMCHOICE%"=="D" GOTO MENU
PAUSE
GOTO FILEMANAGER

:DATETIME
CLS
ECHO Current Date: %DATE%
ECHO Current Time: %TIME%
PAUSE
GOTO MENU