@echo off
cls
rem -- cls nos limpia la pantalla
echo ***********************************************
echo -----------    M   E    N    U    -------------
echo ***********************************************
set seguir=s
set ruta=R:\VMfiles\
goto begin
:start
	set /p seguir="Desea ejecutar otra tarea (s/n) ?"
	cls
:begin
	if "%seguir%"=="n" goto end else (
		echo Estas son las opciones para ejecutar:
		echo 	1 - ejecutar usuarios
		echo 	2 - ejecutar cortafugos
		echo 	3 - ejecutar calculadora
		echo 	9 - salir
		set /p tarea="Seleccione el numero de tarea:"
		if "%tarea%"=="1" ( 
			call %ruta%usuarios.bat
			goto start
		)  else if "%tarea%" == "2" ( 
			call %ruta%cortafuegos.bat
			goto start
		)  else if "%tarea%" == "3" ( 
			call %ruta%calc.bat
			goto start
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







echo ----------------------------------------------
echo --------------- FIN DEL MENU   ---------------
echo ----------------------------------------------