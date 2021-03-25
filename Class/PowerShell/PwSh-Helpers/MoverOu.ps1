# mover OU
$originOu = (Read-Host "Dime el nombre de la OU a Mover")
$targetOu = (Read-Host "Dime el nombre de la OU a donde la quieres Mover")
echo "==> Vamos a mover OU=$originOu,DC=diegopp,DC=local para ou=$targetOu,DC=diegopp,DC=local"

Get-ADOrganizationalUnit -Identity "OU=$originOu,DC=diegopp,DC=local" |
    Set-ADOrganizationalUnit -ProtectedFromAccidentalDeletion:$false

Move-ADObject -Identity "OU=$originOu,DC=diegopp,DC=local" -TargetPath “ou=$targetOu,DC=diegopp,DC=local"

# set protected to target
Get-ADOrganizationalUnit -filter * –SearchBase "OU=$targetOu,DC=diegopp,DC=local" |
    Set-ADObject  -ProtectedFromAccidentalDeletion:$true