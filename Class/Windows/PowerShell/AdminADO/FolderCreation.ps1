$folder = "Usuarios"
cd  C:\Users\Administrador\Documents | Out-Null
Get-Volume
Read-Host "Pulse intro para ver Información de los volúmenes"
$unidadElegida= Read-Host "Escribe la letra de la unidad a utilizar"
Write-Host "La unidad a usar es $unidadElegida"
# comprobamos
$path = $unidadElegida + ":\"
Write-Host "Comprobamos $path"
#PUNTO DE CONTROL
$existeUnidad = Test-Path $path
if ($existeUnidad -eq $True)
{
	 Write-Host "La ruta $unidadElegida existe"
     New-Item -Path $path -Name $folder -ItemType "directory"
     New-Item -Path "$path$folder" -Name "Comun" -ItemType "directory"
     New-Item -Path "$path$folder\Comun" -Name "ComunAlumnos" -ItemType "directory"
     New-Item -Path "$path$folder\Comun" -Name "ComunProfes" -ItemType "directory"
     New-Item -Path "$path$folder" -Name "Cursos" -ItemType "directory"
     New-Item -Path "$path$folder" -Name "Usuarios" -ItemType "directory"
     New-Item -Path "$path$folder\Usuarios" -Name "Alumnos" -ItemType "directory"
     New-Item -Path "$path$folder\Usuarios" -Name "Profesores" -ItemType "directory"
     
     # creamos cursos
     foreach ($curso in get-content cursos.txt) {
        Write-Host "Procesando curso $curso en $path$folder\Cursos\$curso"
        md "$path$folder\Cursos\$curso" | Out-Null
     
        # creación del bucle para crear los grupos del curso en la carpeta del curso correspondiente
        foreach ($grp in get-content g$curso.txt) {
            Write-Host "Creando grupo $grp"
            md "$path$folder\Cursos\$curso\$grp" | Out-Null
        }
    }
    #listado de directorios
    $list = Get-ChildItem -Depth 5 -Directory  $path$folder | Select-Object FullName
     foreach ($item in $list) {
        Write-Host $item
     }
}
Else 
{
    Write-Host "La unidad elegida no existe $unidadElegida N existe"
}