Set-ExecutionPolicy RemoteSigned
$password_klant= "@zur34R0v@!2017!" | ConvertTo-SecureString -AsPlainText -Force
$username_klant = "rovacon@rovacon.onmicrosoft.com"
$credential_klant = New-Object System.Management.Automation.PSCredential($username_klant,$password_klant)
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $credential_klant -Authentication Basic -AllowRedirection
Import-PSSession $Session -DisableNameChecking

Get-Recipient -ResultSize Unlimited | Select-Object DisplayName, RecipientType,PrimarySmtpAddress, @{Name="Aliasses";Expression={$_.EmailAddresses | Where-Object {$_ -clike "smtp*"}}}

#Remove-PSSession $Session