@echo off
cls
rem -- cls nos limpia la pantalla
rem title Comprobar archivo y contenido??
echo *****************************************************
echo ----------- PPD - COMPROBAR ARCHIVO ---------------
echo -----------   MOSTRAR CONTENIDO   -----------------
echo *****************************************************
:start
REM comprobar si existe un archivo
if exist %1 goto existe
if NOT exist %1 echo El archivo %1 No EXISTE
goto final
:existe
echo El archivo %1 EXISTE
type %1
:final
pause
