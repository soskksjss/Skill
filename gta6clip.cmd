@echo off
REM gta6clip launcher for Windows: runs the clipper inside its own private Python environment.
setlocal
set "HERE=%~dp0"
if defined GTA6_ENV_DIR (set "ENVD=%GTA6_ENV_DIR%") else (set "ENVD=%USERPROFILE%\.gta6-clipper")
if not exist "%ENVD%\venv\Scripts\python.exe" (
  echo Not set up yet. Double-click or run:  "%HERE%setup.bat"
  exit /b 1
)
set "PYTHONUTF8=1"
set "PYTHONIOENCODING=utf-8"
set "HF_HUB_DISABLE_SYMLINKS_WARNING=1"
set "PATH=%ENVD%\venv\Scripts;%PATH%"
"%ENVD%\venv\Scripts\python.exe" "%HERE%run.py" %*
exit /b %ERRORLEVEL%
