Get-Service s* |  Where-Object Status -eq "Running" | Group-Object name | select values 
Get-Service s* |  Where-Object Status -eq "Running" | Group-Object name | select * 

Get-Service s*  | Where-Object {$_.Status -eq "Running"}


Get-Service s*  | Where-Object {$_.Status -EQ "Stopped";$_.Status -EQ "Running"} | Sort Status

Get-Service s* | Group-Object Status
Get-Service s* | Group-Object Status | Get-Member

Get-Service s* | Group-Object Status | select *
 