# Installs and selects the Windows Ultimate Performance power plan.
# This will signifigantly speed up many computers.

# Install ultimate performance plan
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 

# Locate and activate new plan
$p = Get-CimInstance -Name root\cimv2\power -Class win32_PowerPlan -Filter "ElementName = 'Ultimate Performance'"
powercfg /setactive ([String]$p.InstanceID).Replace("Microsoft:PowerPlan\{","").Replace("}","")
