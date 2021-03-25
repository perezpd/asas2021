# crear user en users
$userToCreate = (Read-Host "Dime el nombre del usuario a crear")
$userObject = $null
try {
    $userObject = Get-ADObject -Identity "cn=$userToCreate,CN=users,DC=diegopp,DC=local" 
    echo "Tenemos creado ya: $userObject"
}
catch {
    Write-Warning $_
}
if (-not $userObject) {
    New-ADUser -DisplayName "$userToCreate" -Name "$userToCreate" -UserPrincipalName "$userToCreate" -Enabled:$true -Path "CN=users,dc=diegopp,dc=local" -AccountPassword (ConvertTo-SecureString -string "abc123." -AsPlainText -Force) -ChangePasswordAtLogon:$True
    Get-ADObject -Identity "cn=$userToCreate,CN=users,DC=diegopp,DC=local"
}

if ($userObject -ne $null) {
    echo " Exists $userObject"
}