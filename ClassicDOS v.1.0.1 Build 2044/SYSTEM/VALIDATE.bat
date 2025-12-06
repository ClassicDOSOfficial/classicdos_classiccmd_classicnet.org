@echo off
title ClassicDOS Key Validation
echo ============================================
echo   Ministry of Keys - Validation Module
echo ============================================
echo.

set /p KEY=Enter product key: 

:: Check against multiple valid keys
if "%KEY%"=="CLASSIC-77BBM-XX430-9999-BBMSA" goto VALID
if "%KEY%"=="CLASSIC-89BAL-MM630-7777-MMMIO" goto VALID
if "%KEY%"=="CLASSIC-20BLF-AA830-1111-QQMAJ" goto VALID
if "%KEY%"=="CLASSIC-95ADL-UU230-2222-IIAlS" goto VALID
if "%KEY%"=="CLASSIC-81SLA-BB330-3333-OPADF" goto VALID
if "%KEY%"=="CLASSIC-29ACK-CC590-5555-DOSDF" goto VALID
if "%KEY%"=="CLASSIC-90AKC-DD669-7023-OSDDF" goto VALID
if "%KEY%"=="CLASSIC-59BAD-AA730-0928-SADFG" goto VALID
if "%KEY%"=="CLASSIC-20356-09W45-VDLK-DSLFJ" goto VALID
if "%KEY%"=="CLASSIC-3480A-SDLFG-8904-SDLKJ" goto VALID

:: If no match, fail
echo Invalid key. System locked until restart.
exit /b 1

:VALID
echo Key accepted!
exit /b 0