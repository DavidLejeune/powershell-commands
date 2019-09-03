Write-host "HYPER-V VIRTUAL MACHINES MANAGER"
Write-host "--------------------------------"
$arrayNOK = New-Object System.Collections.ArrayList
$iOK=0;
function Initial_Check(){

    #Write-host ""
    #Write-Host ">> Check running VMs"

    $vms = @(Get-VM | Where { $_.State –eq ‘Running’ -and $_.Name -eq 'RVC-DC01'  }) | Select-Object Name;
    $allrunningvms=(Get-VM | Where { $_.State –eq ‘Running’ -and $_.Name -eq 'RVC-DC01'  });
    #$allrunningvms;
}

function Output-TotalVMS(){
    $iTotal=($vms | Measure-Object).Count;
    $Output="Total number of running VMs : $iTotal";
    Write-Output ""
    Write-Output  $Output;
}

function Stop-All-VMs(){
    foreach ($vm in $vms) {
        Write-Output ("Shutting down " + $vm.Name);
        Stop-VM $vm.Name;
    };
}

function Check-VMs-After-Shutdown(){
    if ($iTotal -gt 0){
        Write-host "";
        Write-Host ">> Check running VMs after shutdown";
        foreach ($vm in $vms) {
    
            $VM2test = Get-VM -Name $vm.Name ;
            if ($VM2test.State -eq "Running") 
            { 
                Write-Output ($vm.Name + " is still running.");
                $nme=$vm.Name
                $arrayNOK.add("$nme")
            }
            else
            { 
                Write-Output ($vm.Name + " is shut down.");
                $iOK=$iOK+1;
            };
        };
    };
}

function Show-Result()
{
    $Out=("Shutdowns : " + $iOK + "/" + $iTotal);
    Write-Output $Out;

}

function All-OK(){
    if ($iOK -eq $iTotal)
    {
        Write-Output ("All machines are shutdown");
    }
    else
    {
        Write-Output ("Not all machines are shutdown : ");
        $arrayNOK;
    };
};


#SCRIPT ----------------------------------------
Initial_Check
Output-TotalVMS
Write-Output ""
Stop-All-VMs
Write-Output ""
Check-VMs-After-Shutdown
Write-Output ""
Show-Result
Write-Output ""
All-OK