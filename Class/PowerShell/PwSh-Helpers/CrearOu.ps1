$nombreOu = (Read-Host "nombre de la unidad organizativa que quieres crear" )
$ruta = "dc=diegopp,dc=local"
New-ADOrganizationalUnit -DisplayName $nombreOu -Name $nombreOu -Path $ruta 
#$nombreNuevaOu= "nominas"
#New-ADOrganizationalUnit -DisplayName $nombreNuevaOu -Name $nombreNuevaOu -Path "ou=$nombreOu,$ruta"  

Get-ADOrganizationalUnit -LDAPFilter "(name=$nombreOu)" –SearchBase "ou=$nombreOu,dc=diegopp,dc=local" -SearchScope 1 –Properties * | ft DistinguishedName