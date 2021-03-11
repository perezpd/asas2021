@echo off
cls
rem -- cls nos limpia la pantalla

echo ***********************************************
echo -----------    U S U A R I O S    -------------
echo ***********************************************
set seguir=s
goto begin
:start
	set /p seguir="Desea ejecutar otra tarea (s/n) ?"
:begin
	if "%seguir%"=="n" goto end else (
		echo Estas son las opciones para ejecutar:
		echo 	1 - añadir un usuario
		echo 	2 - eliminar un usuario
		echo 	9 - salir
		set /p tarea="Seleccione el numero de tarea:"
		if "%tarea%"=="1" (
			set /p nombre="Introduzca el nombre del usuario a añadir..."
			net user %nombre% * /add
			net user %nombre%
		)  else if "%tarea%" == "2" ( 
			net user
			set /p nombre="Introduzca el nombre del usuario a eliminar..."
			echo Se va a eliminar el usuario %nombre%:
			net user
			net user %nombre% /delete
			net user
		)  else if "%tarea%"== "9" ( 
			goto end 
		) else ( goto error)
	)
:error
	echo -------------  x x x x -----------------
	echo La opcion seleccionada no es valida
	echo -------------  x x x x -----------------
	goto start
:end
echo ------------------------------------------------
echo ----- FIN DEL PROGRAMA USUARIOS---------------
echo ------------------------------------------------