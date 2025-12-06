@echo off
if "%~1"=="" (
  echo Usage: TYPE <filename>
) else (
  type "%~1"
)

pause