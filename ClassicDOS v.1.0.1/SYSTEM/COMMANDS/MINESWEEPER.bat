@echo off
setlocal ENABLEDELAYEDEXPANSION
cls
echo ================================================
echo ClassicDOS Minesweeper
echo ================================================
echo.
echo Rules:
echo - Grid is 5x5
echo - 5 hidden mines
echo - Enter coordinates as row,col (e.g. 2,3)
echo - Goal: reveal all safe cells
echo ================================================
echo.

:: Initialize grid
set SIZE=5
set MINES=5
set SAFE=20
set FOUND=0

:: Generate mines (random positions)
set "MINEPOS="
for /l %%R in (1,1,%MINES%) do (
  set /a RX=!random! %% %SIZE% + 1
  set /a CX=!random! %% %SIZE% + 1
  set "MINEPOS=!MINEPOS! %%RX%%,%%CX%%;"
)

:loop
if %FOUND% GEQ %SAFE% (
  echo Congratulations! You cleared the field!
  goto end
)

set /p MOVE=Enter cell (row,col): 
if "!MOVE!"=="" goto loop

:: Check if move is a mine
for %%M in (%MINEPOS%) do (
  if /i "%%M"=="!MOVE!" (
    echo BOOM! You hit a mine at !MOVE!
    goto end
  )
)

:: Safe move
set /a FOUND+=1
echo Safe at !MOVE!  (%FOUND%/%SAFE% safe cells found)
goto loop

:end
echo.
echo Game Over.
pause
endlocal