#https://stackoverflow.com/questions/13869182/how-to-get-the-default-gateway-from-powershell

Write-Host "Quick and dirty method : ";
Get-WmiObject -Class Win32_IP4RouteTable | where-object { $_.destination -eq '0.0.0.0' -and $_.mask -eq '0.0.0.0'} | Sort-Object metric1 | select-object nexthop, metric1, interfaceindex| format-Table;
Write-Host "Checking multiple gateways : ";
Write-Host "in case of multiple gateways >> lowest metric wins";
Get-NetIPConfiguration | Foreach IPv4DefaultGateway;

