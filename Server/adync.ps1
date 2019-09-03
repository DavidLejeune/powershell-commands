Import-Module ADSync
Get-ADSyncScheduler
Get-Date ; Start-ADSyncSyncCycle -PolicyType Initial ; sleep 60 ; Start-ADSyncSyncCycle -PolicyType Delta