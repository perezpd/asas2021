@echo off
cls
rem -- cls limpia la pantalla
echo ***********************************************
echo -----------   M  E  N  U    I P   -------------
echo -    Establece la ip en la interfaz dada      -
echo ***********************************************
set name="ethernet0"
set source="dhcp"
set ip=""
ipconfig
set /p param1="Desea cambiar la interfaz %name% (s/ introduce nombre)..."
if "%param1%"=="s" (goto setip) else (
	set name=%param1%
	echo Name es: %name%
	goto setip
)

rem set /p param2="Desea habilitar %source% (s/ static)..."
rem if %param1% == "s" (goto sour) else (
rem 	set source=%param2%
rem 	echo Source es: %source%
rem )
:setip
set /p ip="Introduce la direaccion nueva IP..."
echo la IP a introducir es %ip%
netsh interface ipv4 set address name="%name%" source=static %ip% 255.255.255.0
netsh interface ipv4 show address | findstr "Configuración IP"

