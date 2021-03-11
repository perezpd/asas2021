@echo off
cls
rem title Copia de backups??
echo *****************************************************
echo ----------- PPD - COPIA DE ARCHIVOS ---------------
echo -----------   ORIGEN -> DESTINO   -----------------
echo *****************************************************
:start
rem sintaxis:   xcopy opciones carpetaAcopiar  carpetaEnLaQueCopiar
rem en este caso usa las opciones siguientes, aunquepodrían ser otras:
rem /c -> En caso de que suceda algún error continuar con la copia.
rem /k -> copia también los atributos.
rem /y -> En caso de que en la carpeta en la que se hace la copia
rem ya existan esos archivos,
rem no pregunta, sino que directamente los sobreescribe.
rem carpeta a copiar -> c:\users\usuario\documents\lecciones
rem carpeta destino en la que hacer la copia -> c:\backups
rem set origen=c:\users\usuario\documents\lecciones
rem set destino=c:\backups
set origen=%1
set destino=%2
xcopy /c /k /y origen destino
echo backup completado
