# mover un usuario de OU a otra con cmd
$originUser = (Read-Host "Dime el nombre del usuario a Mover")
$targetOu = (Read-Host "Dime el nombre de la OU a donde lo quieres Mover")
dsmove $originUser -newparent $targetOu

#
#C:\Users\Administrador\Documents\moveUSer.ps1
#Dime el nombre del usuario a Mover: CN=Andrea,CN=Users,DC=diegopp,DC=local
#Dime el nombre de la OU a donde lo quieres Mover: ou=test2,DC=diegopp,DC=local
#dsmove correcto:CN=Andrea,CN=Users,DC=diegopp,DC=local
