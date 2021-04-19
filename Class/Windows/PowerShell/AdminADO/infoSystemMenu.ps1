$x=0
function preguntar($componente){
    Clear-Host
    Write-Host "¿Que quieres ver?"
    Write-Host "1. Nombre"
    Write-Host "2. Fabricante"
    Write-Host "3. Información Detallada"
    $opcion=Read-Host "Elige una opción"
    if ($opcion -eq 1)
    {
        Get-WmiObject -Class $componente|ft Name
    }
    if ($opcion -eq 2)
    {
        Get-WmiObject -Class $componente|ft Manufacturer
    }
    if ($opcion -eq 3)
    {
        Get-WmiObject -Class $componente|fl *
    }
}
#Inicio de menu cambio la opción de salida a 5 porque hay una opción más
while ($x -ne 5)
{
    Clear-Host
    Write-Host "Información de Hw y Sw"
    Write-Host ""
    Write-Host "1. Procesador"
    Write-Host "2. Placa Base"
    Write-Host "3. BIOS"
    Write-Host "4. Configuración del equipo"
    Write-Host "5. Salir"
    $x=Read-Host "Seleccione opción"
    if ($x -eq 1){preguntar("win32_processor")}
    if ($x -eq 2){preguntar("win32_baseboard")}
    if ($x -eq 3){preguntar("win32_Bios")}
    if ($x -eq 4){preguntar("Win32_Computersystem")}
    if ($x -ne 5)
    {
        Read-Host "Pulsa para continuar"
    }
}