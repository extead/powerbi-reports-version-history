@echo off
echo "%~1"
%~dp0\.tools\pbi-tools\pbi-tools.exe compile "%~1" -overwrite True -format PBIT -outPath "%~1".pbix
echo %~dp0
pause