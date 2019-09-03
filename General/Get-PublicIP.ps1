$ip = Invoke-RestMethod http://ipinfo.io/json | Select -exp ip;
$ipinfo = Invoke-RestMethod http://ipinfo.io/json ;
$myFQDN=(Get-WmiObject win32_computersystem).DNSHostName+"."+(Get-WmiObject win32_computersystem).Domain
$Out= "$myFQDN" + ".txt"
$var="$env:computername.$env:userdnsdomain";
Add-Content "$Out" "FQDN     : $var"; 
Add-Content "$Out" "FQDN     : $myFQDN" ; 
$var=$ipinfo.ip
Add-Content "$Out" "IP       : $var";
$var=$ipinfo.hostname
Add-Content "$Out" "Hostname : $var";
$var=$ipinfo.city
Add-Content "$Out" "City     : $var" ;
$var=$ipinfo.region
Add-Content "$Out" "Region   : $var" ;
$var=$ipinfo.country
Add-Content "$Out" "Country  : $var" ;
$var=$ipinfo.loc
Add-Content "$Out" "Location : $var" ;
$var=$ipinfo.org
Add-Content "$Out" "Org      : $var" ;

Write-Host "Data logged to $Out"

