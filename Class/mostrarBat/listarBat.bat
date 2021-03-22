@echo off
cls
rem title Copia de backups??
echo *****************************************************
echo ----------- PPD - LISTAR ARCHIVOS  .bat---------------
echo -----------   ORIGEN -> DESTINO   -----------------
echo *****************************************************
:start
rem sintaxis:
rem FOR ejecutar un archivo bat para cada archivo FOR %%I IN (*.bat) DO mostrar.bat  %%I
echo El directorio es: %CD%
For %%F in (%CD%\*.bat) do (
    echo -
    echo -
    echo ----INICIO   %%F -----------------
    mostrar.bat %%F
    echo ------FIN %%F---------------
)
    