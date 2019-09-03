$ip = Read-Host -Prompt 'Please enter the ip address'
$output=[system.net.dns]::gethostentry($ip);
write-output $output;
nslookup $ip;


