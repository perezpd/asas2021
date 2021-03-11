@echo off
echo ***********************************************
echo -----------    T  A  R  E  A  S   -------------
echo ***********************************************
:start
	set /p seguir="Desea ejecutar otra tarea (s/n) ?"
	if "%seguir%"=="n" goto end else (
		echo Seleccione una de estas opciones:
		echo 	1 - configuracion de red - ipconfig
		echo 	2 - configuracion de red completa  - ipcofig /all
		echo 	3 - abrir el editor de directivas de grupo - gpedit
		echo 	4 - abrir el gestor de usuarios - lusrmgr
		set /p tarea="Seleccione el id de tarea (1-4):"
		if "%tarea%"=="1" ( ipconfig
		)  else if "%tarea%" == "2" ( ipconfig /all
		)  else if "%tarea%" == "3" ( gpedit
		)  else if "%tarea%"== "4" ( lusmgr ) else goto end
	)
:end
echo ------------------------------------------------
echo --------------- FIN DEL PROGRAMA ---------------
echo ------------------------------------------------