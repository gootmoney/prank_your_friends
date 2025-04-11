@echo off
setlocal

:: Get the folder where this BAT file is located
set "script_dir=%~dp0"
set "ps1_file=%script_dir%prank_your_friends.ps1"

:: Run the PowerShell script
powershell -NoProfile -ExecutionPolicy Bypass -File "%ps1_file%"

endlocal
