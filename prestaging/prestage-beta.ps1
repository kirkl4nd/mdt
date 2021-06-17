while($true) {
	$name = Read-Host -Prompt "Enter computer name: "
	[guid]$netbootguid = Read-Host -Prompt "Enter computer MAC32: "
	new-adcomputer -Name $name -OtherAttributes @{'NetbootGUID'=$netbootguid;}
}