$user = "knight0\sccmservice" 
$pwd1 = "Bell2282"
$pwd = ($pwd1 | ConvertTo-SecureString)
$Credential = New-Object System.Management.Automation.PSCredential $user, $pwd
Start-Process powershell.exe -Credential $Credential -ArgumentList (".\install.ps1")
