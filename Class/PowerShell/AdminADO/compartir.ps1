#ejecuto mi script de definición de variables de entorno, donde $env:unidad se establece a E:
cd  C:\Users\Administrador\Documents | Out-Null
./DomainInitialVars.ps1

$datos = $unidad

$carpetas = ("Alumnos","Comun","Cursos")
foreach ($recurso in $carpetas) {
    Write-Host "Comparto la carpeta $datos\Usuarios\$recurso"
    New-SMBShare –Name "$recurso" –Path "$datos\Usuarios\$recurso" –FullAccess Todos | out-null
}
