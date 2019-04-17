$NetAdapter = Get-WMIObject -Class "Win32_NetworkAdapterConfiguration" -Filter "IPEnabled=TRUE"
$DNS1,$DNS2,$DNS3 = $NetAdapter.DNSServerSearchOrder
$WINS1 = $NetAdapter.WINSPrimaryServer
$WINS2 = $NetAdapter.WINSSecondaryServer
write-host "DNS 1 : $DNS1"
write-host "DNS 2 : $DNS2"
write-host "DNS 3 : $DNS3"

