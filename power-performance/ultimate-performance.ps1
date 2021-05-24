# Installs and selects the Windows Ultimate Performance power plan.
# This will signifigantly speed up many computers.

# Install ultimate performance plan
# KIRK BURRILL, MAY 2021

# Set plan to balanced
$balanced = Get-CimInstance -Name root\cimv2\power -Class Win32_PowerPlan -Filter "ElementName = 'Balanced'"
$balguid = ($balanced.InstanceID).Replace("Microsoft:PowerPlan\{","").Replace("}","")
powercfg /setactive $balguid

# Delete singular plan
$p = Get-CimInstance -Name root\cimv2\power -Class win32_PowerPlan -Filter "ElementName = 'Ultimate Performance'"
powercfg /d ([string]$p.InstanceID).Replace("Microsoft:PowerPlan\{","").Replace("}","")

# Delete multiple plans
foreach ($plan in $p){
    powercfg /d ([string]$plan.InstanceID).Replace("Microsoft:PowerPlan\{","").Replace("}","")
}

# Create new plan
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

$ultpower = Get-CimInstance -Name root\cimv2\power -Class Win32_PowerPlan -Filter "ElementName = 'Ultimate Performance'"
$guid = ($ultpower.InstanceID).Replace("Microsoft:PowerPlan\{","").Replace("}","")
powercfg /setactive $guid

# END