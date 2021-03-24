@echo off
cls
rem title: Listar ficheros de un directorio!
echo *****************************************************
echo ----------- PPD - LISTAR ARCHIVOS  .bat---------------
echo -----------   ORIGEN -> DESTINO   -----------------
echo *****************************************************
:start
rem sintaxis:
rem usamos FOR para ejecutar un archivo bat para cada archivo FOR %%I IN (*.bat) DO mostrar.bat  %%I
echo El directorio es: %CD%
For %%F in (%CD%\*.bat) do (
    echo -
    echo -
    echo ----INICIO del contenido de:  %%F -----------------
    mostrar.bat %%F
    echo ------FIN del contenido de: %%F---------------
)
    