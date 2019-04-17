Import-Module ADSync
Get-ADSyncScheduler
Start-ADSyncSyncCycle -PolicyType Initial ; sleep 60 ; Start-ADSyncSyncCycle -PolicyType Delta