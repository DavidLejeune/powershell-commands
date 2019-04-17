https://gabrielrojas.nyc/2015/12/11/find-available-ips-using-powershell/


1..254  | ForEach-Object {
    if(!(Test-Connection 192.168.100.$_ -count 1 -Quiet)) {
            Write-Output "IP Address Available 192.168.100.$_"
    }
    else {
        #Write-Output "IP Address in use 192.168.100.$_"
Write-Output ""
    }

}


230..254  | ForEach-Object {
    if(!(Test-Connection 192.168.100.$_ -count 1 -Quiet)) {
        
            Write-Output "172.16.90.$_ : available"
    }
    else {
        #Write-Output "IP Address in use 172.16.90.$_"
Write-Output ""
    }

}