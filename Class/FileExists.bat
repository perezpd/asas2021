@echo off
cls
rem -- cls nos limpia la pantalla
rem title Comprobar archivo??
echo *****************************************************
echo ----------- PPD - COMPROBAR ARCHIVO ---------------
echo *****************************************************
:start
REM comprobar si existe un archivo
if exist %1 goto existe
if NOT exist %1 echo El archivo %1 No EXISTE
goto final
:existe
echo El archivo %1 EXISTE
:final
pause
