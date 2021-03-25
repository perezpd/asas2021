#testcadena
#CLEAR
$nombreOu = (Read-Host "nombre de la unidad organizativa que quieres crear" )
$ruta = "dc=diegopp,dc=local"
New-ADOrganizationalUnit -DisplayName $nombreOu -Name $nombreOu -Path $ruta 
$nombreNuevaOu= "nominas"
New-ADOrganizationalUnit -DisplayName $nombreNuevaOu -Name $nombreNuevaOu -Path "ou=$nombreOu,$ruta"  

$dnNominas = Get-ADOrganizationalUnit -LDAPFilter "(name=*)" –SearchBase "ou=$nombreOu,dc=diegopp,dc=local" -SearchScope 1  -Properties 'DistinguishedName'
echo "dnominas"+$dnNominas

echo " ----------- vamos a borrar $dnNominas ------ "

Set-ADOrganizationalUnit -Identity:"$dnNominas" -ProtectedFromAccidentalDeletion:$false -Server:"SASO-PPD-01.diegopp.local"

Remove-ADOrganizationalUnit $dnNominas
#Remove-ADOrganizationalUnit -Confirm:$false -Identity:"$dnNominas" -Server:"SASO-PPD-01.diegopp.local"
echo "--- conprobamos ----- "
Get-ADOrganizationalUnit -LDAPFilter "(name=*)" –SearchBase "ou=$nombreOu,dc=diegopp,dc=local" -SearchScope 1 –Properties * | Format-Table DistinguishedName
