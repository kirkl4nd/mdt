Clear
Echo "Netboot Pre-Staging"
Echo "-------------------"
Echo " "
Echo "This script will pre-stage devices for netbooting, and create computer objects in Active Directory."
Echo "Enter device names and mac addresses. Be sure to move final objects to the proper OU!!!"
Echo ""
while($true) {
	$name = Read-Host -Prompt "Enter computer name "
	$mac = Read-Host -Prompt "Enter computer mac address "
	[guid]$netbootguid = "00000000000000000000"+$mac
	new-adcomputer -Name $name -OtherAttributes @{'NetbootGUID'=$netbootguid;}
	Echo "-------------------"
}