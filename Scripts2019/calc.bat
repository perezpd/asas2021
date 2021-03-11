@echo off
cls
rem -- cls nos limpia la pantalla

echo ***********************************************
echo ----------- C A L C U L A D O R A -------------
echo ***********************************************
:start

rem title Calculadora??
set /p numero1=Introduzca el primer operando... 
set /p oper=Introduzca el operador(+-*/)...
set /p numero2=Introduzca el segundo operando...
echo.
echo.
rem  IF %oper% NEQ - IF %oper%NEQ* IF %oper%NEQ/ 

rem IF [%oper%]==* IF %oper%==/   IF not "%oper%"=="-"

If [%oper%]==[+] goto calculator
If [%oper%]==[-] goto calculator
If [%oper%]==[*] goto calculator
If [%oper%]==[/] goto calculator

echo **-*-*-* error 
goto error 
rem si ponemos aqui las instrucciones de :error no funcionan
goto loop
:calculator
	echo Vamos a calcular %numero1% %oper% %numero2%
	echo.
	echo.
	set /a resultado=%numero1% %oper% %numero2%
	echo El resultado del calculo es: %resultado%
	goto loop
:error 
	echo Operación incorrecta!!


:loop
echo.
pause
set accion=null
set /p accion=desea salir (s)?
if %accion%==s (goto end) else (goto start)

:end
echo ------------------------------------------------
echo -------- FIN DEL PROGRAMA CALCULADORA ----------
echo ------------------------------------------------