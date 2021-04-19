# Go to the directory of all scripts first

cd C:\Users\Administrador\Documents
# execute previuos vars script to define them
./DomainInitialVars.ps1

$OUraiz = "OU=Usuarios,dc=$env:nombreD,dc=$env:extD"
Write-Host "La ou es $OUraiz"
$existe= [adsi]::Exists("LDAP://$OUraiz")
# alternative
# $existe = Get-ADOrganizationalUnit -Filter "distinguishedName -eq '$OUraiz'"
Write-Host "La existencia de la OU  $OUraiz "
if($existe -eq $false -OR  $existe -eq $null) { 
    Write-Host "Nos da FALSE"
    }
else {
    Write-Host "Nos da TRUE"
}
# $true and $false already exists as env vars to use

if($existe -eq $false -OR  $existe -eq $null) {
    echo "Creando OUs"
    New-ADOrganizationalUnit -name Usuarios -path "dc=$env:nombreD,dc=$env:extD"-protectedFromAccidentalDeletion $false
    New-ADOrganizationalUnit -name Alumnos -path "$OUraiz" -ProtectedFromAccidentalDeletion $false
    New-ADOrganizationalUnit -name Profesores -path "$OUraiz" -ProtectedFromAccidentalDeletion $false
}