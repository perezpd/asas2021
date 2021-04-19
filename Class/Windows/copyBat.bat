@echo off
cls
rem title Copia de fichero de destino a origen por tipo
echo *****************************************************
echo ----------- PPD - COPIAR ARCHIVOS .bat---------------
echo --------- extension de ORIGEN a DESTINO   -----------
echo *****************************************************
set /p destino="Escribe la ruta de destino de la copia de archivos: ...."
set /p origen="Escribe la ruta de origen los archivos a copiar..."
set /p extension="Escribe la extension de los archivos a copiar..."
echo origen
echo destino
echo extension
mkdir %destino
FOR %%F in (%destino\*.%extension) do (
    echo Procesamos el fichero %%F
    copy %%F
    Echo hemos copiado %%F
)