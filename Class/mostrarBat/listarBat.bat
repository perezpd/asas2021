@echo off
cls
rem title: Listar ficheros de un directorio!
echo *****************************************************
echo ----------- PPD - LISTAR ARCHIVOS  .bat---------------
echo *****************************************************

rem sintaxis:
rem usamos FOR para ejecutar un archivo bat para cada archivo FOR %%I IN (*.bat) DO mostrar.bat  %%I
set ruta=%CD%
echo El directorio es: %ruta%
echo Su contenido es:
DIR %ruta%
echo Mostramos el contenido de los ficheros!
pause
For %%F in (%ruta%\*.bat) do (
    echo -
    echo -
    echo ----INICIO del contenido de:  %%F -----------------
    mostrar.bat %%F
    echo ------FIN del contenido de: %%F---------------
    pause
)
echo Todos los ficheros mostrados
    