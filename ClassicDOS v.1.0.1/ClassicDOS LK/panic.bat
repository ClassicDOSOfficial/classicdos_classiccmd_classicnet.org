@echo off
title ClassicDOS Corruption Ritual
color 47
cls

echo ============================================================
echo                    CLASSICDOS KERNEL PANIC
echo ============================================================
echo A corruption has been detected in your copy of ClassicDOS.
echo SYSTEM folder integrity check failed.
echo.
echo *** STOP: 0x000000CD (CORRUPTION_DETECTED_IN_CLASSICDOS)
echo.
echo ============================================================
ping -n 5 127.0.0.1 >nul

:BSOD
cls
color 47
echo ============================================================
echo                    CLASSICDOS RSOD
echo ============================================================
echo Your system has been corrupted by piracy.
echo  *** STOP:6x000000CDOS (CORRUPTION_DETECTED_IN_CLASSICDOS)
echo ============================================================
ping -n 5 127.0.0.1 >nul
goto BSOD

rem === Ritual Shutdown ===
echo Initiating ClassicDOS ritual shutdown...
ping -n 3 127.0.0.1 >nul
exit /b 1