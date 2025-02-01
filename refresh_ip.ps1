# Refresh-Network-IP.ps1
# This script will release and renew the IP address of network adapters.

Get-NetAdapter | Where-Object {$_.Status -eq "Up"} | Disable-NetAdapter -Confirm:$false
Start-Sleep -Seconds 5
Get-NetAdapter | Where-Object {$_.Status -eq "Disabled"} | Enable-NetAdapter -Confirm:$false
