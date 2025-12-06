@echo off
if "%~1"=="" (
  echo Usage: COPY <source> <destination>
) else (
  copy %1 %2
  echo Copied %1 to %2
)