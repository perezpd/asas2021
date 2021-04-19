@echo off
cls
rem -- cls nos limpia la pantalla
rem title Calculador de suma??
echo *****************************************************
echo ----------- PPD - C A L C U L A D O R ---------------
echo *****************************************************
:start
set /p numero1=Introduzca el primer numero...
set /p oper=Introduzca el operador(+-*/)...
set /p numero2=Introduzca el segundo numero...
set /a resultado= %numero1% %oper% %numero2%
echo %resultado%
echo el valor de %numero1% %oper% %numero2% es: %resultado%
pause
