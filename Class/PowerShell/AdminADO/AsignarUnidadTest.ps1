$servidor=$env:computername
# se asigna a la variable $servidor la variable de entorno computername
$nombre="CN=g-asir1,ou=asir1,ou=asir,ou=alumnos,ou=usuarios,dc=iso,dc=local"
# se establece el nombre distinguido del grupo g-asir1
$grupos =  (Get-ADUser -identity pepe -Properties memberof | Select-Object memberof).memberof
# se obtienen los grupos de ´los que es miembro pepe
foreach ($grupo in $grupos)
# hago un loop para cada grupo de pepe obtenido
{
    if ($grupo -eq $nombre)
# si el grupo de esta iteración del loop es igual al definido para asir-1 anteriormente 
    {
        net use W: \\$servidor\apuntes /persistent:no
# si se cumple que pepe esta en asir-1, asigno la unidad W:
# establezco la unidad W: con la ruta da la carpeta compartida \\$servidor\apuntes sin persistirla, 
# es decir que cuando se apague y encienda no aparezca la unidad
    }
    
}