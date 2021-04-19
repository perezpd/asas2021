Get-Disk
#Number Friendly Name                                                   Serial Number                    HealthStatus         OperationalStatus      Total Size Partition Style     
#------ -------------                                                   -------------                    ------------         -----------------      ---------- ----------
#0      VBOX HARDDISK                                                   VBf71d1b67-39d4de7a              Healthy              Online                     100 GB MBR       
#1      VBOX HARDDISK                                                   VBaac98d46-18809bdb              Healthy              Online                      64 GB MBR       

Get-Partition
<#   DiskPath: \\?\scsi#disk&ven_vbox&prod_harddisk#4&3554261f&0&000000#{53f56307-b6bf-11d0-94f2-00a0c91efb8b}

PartitionNumber  DriveLetter Offset                                                                 Size Type                                                            
---------------  ----------- ------                                                                 ---- ----                                                            
1                            1048576                                                              500 MB IFS                                                             
2                C           525336576                                                          99.51 GB IFS                                                             


   DiskPath: \\?\scsi#disk&ven_vbox&prod_harddisk#4&3554261f&0&020000#{53f56307-b6bf-11d0-94f2-00a0c91efb8b}

PartitionNumber  DriveLetter Offset                                                                 Size Type                                                            
---------------  ----------- ------                                                                 ---- ----                                                            
1                E           1048576                                                               64 GB IFS                                                             
#>
Get-Volume
<#
DriveLetter FileSystemLabel           FileSystem DriveType HealthStatus OperationalStatus SizeRemaining     Size
----------- ---------------           ---------- --------- ------------ ----------------- -------------     ----
D           SSS_X64FREE_ES-ES_DV9     UDF        CD-ROM    Healthy      OK                          0 B  6.52 GB
E           Data                      NTFS       Fixed     Healthy      OK                     51.26 GB    64 GB
            Reservado para el sistema NTFS       Fixed     Healthy      OK                    168.42 MB   500 MB
C                                     NTFS       Fixed     Healthy      OK                     88.67 GB 99.51 GB
#>

# TO initialize
#Initialize-Disk -Number 1 -PartitionStyle MBR

# ---- to create partition Datos  --- 
#Initialize-Disk -Number 1 -PartitionStyle MBR
# check disks here


#New-Partition -DiskNumber 1 -UseMaximumSize -AssignDriveLetter
# check partitions here to get letter (if letter is not provided)


#Format-Volume -DriveLetter E -FileSystem NTFS -NewFileSystemLabel Datos
# chek partitions

