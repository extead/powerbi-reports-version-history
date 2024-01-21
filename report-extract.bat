@echo off
echo "%~1"
%~dp0\.tools\pbi-tools\pbi-tools.exe extract "%~1"
echo %~dp0
pause