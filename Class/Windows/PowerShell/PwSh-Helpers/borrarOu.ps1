$nombreToDelete = (Read-Host "nombre de la unidad organizativa que quieres Borrar" )
echo " ----------- vamos a borrar $nombreToDelete ------ "

$dnOu = Get-ADOrganizationalUnit -LDAPFilter "(name=$nombreToDelete)" –SearchBase "dc=diegopp,dc=local" -SearchScope 1  -Properties 'DistinguishedName'
echo " ----------- vamos a borrar $dnOu ------ "
#Get-ADOrganizationalUnit -filter * –SearchBase "ou=$nombreToDelete,dc=diegopp,dc=local" | Set-ADObject -ProtectedFromAccidentalDeletion:$false

#Set-ADOrganizationalUnit -Identity:"ou=$nombreToDelete,DC=diegopp,DC=local" -ProtectedFromAccidentalDeletion:$false -Server:"SASO-PPD-01.diegopp.local"

Get-ADOrganizationalUnit -Identity "OU=$nombreToDelete,DC=diegopp,DC=local" |
    Set-ADOrganizationalUnit -ProtectedFromAccidentalDeletion:$false -PassThru |
    Remove-ADObject -Recursive -Confirm:$false
#Remove-ADOrganizationalUnit $dnOu -rec  -confirm:$false
#Remove-ADOrganizationalUnit -Confirm:$false -Identity:"$dnNominas" -Server:"SASO-PPD-01.diegopp.local"
echo "--- conprobamos ----- "
Get-ADOrganizationalUnit -LDAPFilter "(name=$nombreOu)" –SearchBase "dc=diegopp,dc=local" -SearchScope 1 –Properties * | Format-Table DistinguishedName


# para borrar usuarios dsrm -nopromt
