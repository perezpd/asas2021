$ruta = "dc=diegopp,dc=local"
$nombreOu = (Read-Host "nombre de la unidad organizativa que quieres BUSCAR" )
Get-ADOrganizationalUnit -LDAPFilter "(name=$nombreOu)" –SearchBase $ruta -SearchScope 1 –Properties * | ft Name, DistinguishedName