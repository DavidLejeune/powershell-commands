$portNumber = Read-Host -Prompt 'Enter the PortNumber'
Get-Process -Id (Get-NetTCPConnection -LocalPort portNumber).OwningProcess