# test para obtener los grupos de los que es mimbro un usuario. En este caso Administrador
$grupos =  (Get-ADUser -identity Administrador -Properties memberof | Select-Object memberof).memberof
# se obtienen los grupos de pepe
foreach ($grupo in $grupos){
    Write-Host $grupo
}