# Refresh-Network-IP.ps1
# This script will release and renew the IP address of network adapters.

# Release current IP addresses
Write-Host "Releasing IP address..."
ipconfig /release

# Wait for a moment before renewing
Start-Sleep -Seconds 5

# Renew IP addresses
Write-Host "Renewing IP address..."
ipconfig /renew

Write-Host "IP address has been refreshed successfully!"
