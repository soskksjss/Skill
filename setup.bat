@echo off
REM One-time setup for gta6-clipper on Windows. Safe to run again. Prints "All set" at the end.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0setup.ps1" %*
exit /b %ERRORLEVEL%
