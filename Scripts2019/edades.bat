@echo off 
echo ***********************************************
echo -----------    E  D  A  D  E  S   -------------
echo ***********************************************
echo ---- Vamos a comprobar es mayor de edad! -----
rem la etiqueta [:valor] hace que sea "accesible" desde otra parte del script con el comando goto
rem con [goto valor] (tambien funciona sin los 2 puntos)
:start

rem para salir controlamos si metemos una s para finalizar el script
set /p edad="Dime la edad que quieres comprobar (para salir s)>>"
if %edad% EQU s goto end
echo		:========================================================:
echo				La edad introducida es %edad% años
echo					-
if %edad% GEQ 18 (
	         
	echo				Esta persona es MAYOR DE EDAD			 
	
) else (       
	echo				Esta persona es MENOR DE EDAD			
)
echo		:========================================================: 

if %edad% GTR 67 (echo 		Esta persona deberia estar jubilada con %edad% años!!! )
pause
rem con "goto start" nos lleva al principio de "nuestro bucle" para poder repetir la consulta
goto start
:end
echo ------------------------------------------------
echo --------------- FIN DEL PROGRAMA ---------------
echo ------------------ BY DIEPER -------------------
echo ------------------------------------------------