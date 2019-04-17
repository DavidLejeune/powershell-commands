#https://marckean.com/2016/06/01/use-powershell-to-install-windows-updates/
$PSVersionTable.PSVersion
Install-Module PSWindowsUpdate
Get-Command –module PSWindowsUpdate
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d
Get-WUInstall –MicrosoftUpdate –AcceptAll –AutoReboot