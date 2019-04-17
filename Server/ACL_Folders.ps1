Get-ChildItem D:\ -recurse -ErrorAction SilentlyContinue | where-object {($_.PsIsContainer)} | %{get-acl $_.FullName} | Format-Table | Export-CSV A



Get-ChildItem 'D:\' -Recurse | Where-Object {%(Get-Acl $_.FullName).Access | Where-Object {$_.IdentityReference -eq 'orde\r.marinus'} }


dir "D:\"  -Recurse | where { $_.PsIsContainer } | % { $path1 = $_.fullname; %{Get-Acl $_.Fullname} | % { $_.access | where { !$_.IsInherited } | Add-Member -MemberType NoteProperty -name "Path" -Value $path1 -passthru }} | export-csv Output.csv

Get-ChildItem D:\ -recurse -ErrorAction SilentlyContinue | where-object {($_.PsIsContainer)} | %{get-acl $_.FullName} | Format-Table | Export-CSV ACL_D.csv
