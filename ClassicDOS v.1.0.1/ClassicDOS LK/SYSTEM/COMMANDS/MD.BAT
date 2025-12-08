@echo off
if "%~1"=="" (
  echo Usage: MKDIR <directory>
) else (
  mkdir "%~1"
  echo Directory "%~1" created.
)