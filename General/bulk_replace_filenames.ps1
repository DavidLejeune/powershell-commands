Get-ChildItem -Filter “*current*” -Recurse | Rename-Item -NewName {$_.name -replace ‘current’,’old’ }