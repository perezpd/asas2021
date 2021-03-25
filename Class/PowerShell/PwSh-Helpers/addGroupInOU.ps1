# pruebas grupos
$newGrp = (Read-Host "Dime el nombre del nuevo Grupo")
$ouDest = (Read-Host "Dime el nombre de su OU de destino")
New-ADGroup -DisplayName $newGrp -Name $newGrp -GroupScope Global -Path "ou=$ouDest,DC=diegopp,DC=local"
Get-ADGroup -identity $newGrp

echo "with cmd: "
dsquery group -name $newGrp | dsget group -members

# add user to group 

$usr = (Read-Host "Dime el nombre del usuario")
$grp = (Read-Host "Dime el nombre del Grupo")

Add-ADGroupMember $grp -Members "CN=$usr,cn=users,DC=diegopp,DC=local"
dsquery group -name $grp | dsget group -members

# with cmd
#dsmod group "CN=$grp,OU=test2,DC=diegopp,DC=local" -addmbr "CN=$usr,cn=users,DC=diegopp,DC=local"