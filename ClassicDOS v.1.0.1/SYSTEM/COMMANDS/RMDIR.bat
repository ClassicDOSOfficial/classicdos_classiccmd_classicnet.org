@echo off
if "%~1"=="" (
  echo Usage: RMDIR <directory>
) else (
  rmdir /s /q "%~1"
  echo Directory "%~1" removed.
)