$show = (Get-ADUser -Filter * -Properties * | Select-Object Name, SamAccountName,CanonicalName | sort Name | Format-Table)
write-output $show;

$GetUser = Read-Host -Prompt 'Enter the Users SamAccountName'

$user = Get-ADUser -Identity "$GetUser" -Properties CanonicalName

$userOU = ($user.DistinguishedName -split ",",2)[1]

Write-Output "OU for user $GetUser is $userOU"

# Get all users in the Finance OU.
$OUUsers = Get-ADUser -Filter * -SearchBase "$userOU"
# Iterate the users and update the department and title attributes in AD.
foreach($OUUser in $OUUsers)
{
	SET-ADUSER $OUUser –replace @{StreetAddress="Galgenveldstraat 6"}
	#SET-ADUSER $OUUser –replace @{PostalCode=”8700”}
	#SET-ADUSER $OUUser –replace @{City=”Tielt”}
	#SET-ADUSER $OUUser –replace @{co=”Belgium”}
}

