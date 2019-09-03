Install-Module -Name MSOnline
Connect-MsolService
Get-MsolAccountSku
Get-MsolUser | Where-Object {($_.licenses).AccountSkuId -match "EnterprisePack"}