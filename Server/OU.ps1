$DC1="labo";
$DC2="local";
$OU1="ZOTTEGEM";


New-ADOrganizationalUnit -Name "$($OU1)" -Path "DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Computers" -Path "OU=$($OU1),DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Groups" -Path "OU=$($OU1),DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Distribution" -Path "OU=$($OU1),OU=Groups,DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Security" -Path "OU=$($OU1),OU=Groups,DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Servers" -Path "OU=$($OU1),DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Terminal Servers" -Path "OU=$($OU1),OU=Servers,DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Users" -Path "OU=$($OU1),DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Administrators" -Path "OU=$($OU1),OU=Users,DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Disabled" -Path "OU=$($OU1),OU=Users,DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Mailboxes" -Path "OU=$($OU1),OU=Users,DC=$($DC1),DC=$($DC2)";
New-ADOrganizationalUnit -Name "Service Accounts" -Path "OU=$($OU1),OU=Users,DC=$($DC1),DC=$($DC2)";
