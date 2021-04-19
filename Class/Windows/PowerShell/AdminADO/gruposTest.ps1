$grupos =  (Get-ADUser -identity Administrador -Properties memberof | Select-Object memberof).memberof
# se obtienen los grupos de pepe
foreach ($grupo in $grupos){
    Write-Host $grupo
}