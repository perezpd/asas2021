@echo off
cls
rem -- cls nos limpia la pantalla
echo ***********************************************
echo ----------- C O R T A F U E G O S -------------
echo ***********************************************

rem establecemos el parametro edad por consola
set /p opcion="Escribe si quieres activar o desactivar el cortafuegos (a/d) ?"
rem comprobamos el valor, si es a -> activamos
if "%opcion%"=="a" ( 
	echo **** SE VA ACTIVAR EL CORTAFUEGOS ****
	pause
	netsh advfirewall set allprofiles state on
) else if "%opcion%"=="d" ( 
	rem comprobamos el valor, si es d -> desactiva
	echo  **** SE VA A DESACTIVAR EL CORTAFUEGOS ****
	pause
	netsh advfirewall set allprofiles state off
) else echo ------ OPCION INCORRECTA ------ 
rem en caso de no mandar ningun valor correcto solo muestra el estado del firewall
netsh advfirewall show allprofiles state | find /v "----"
echo ------------------------------------------------
echo ------  FIN DEL PROGRAMA CORTAFUEGOS  ----------
echo ----------------- BY DIEPER --------------------
echo ------------------------------------------------