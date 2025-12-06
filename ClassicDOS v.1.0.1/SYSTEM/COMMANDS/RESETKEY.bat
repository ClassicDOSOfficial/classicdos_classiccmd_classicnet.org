@echo off
if exist SYSTEM\KEY.TXT (
  del /f /q SYSTEM\KEY.TXT
  echo Product key reset. Next boot will ask for a new key.
) else (
  echo No saved key found.
)