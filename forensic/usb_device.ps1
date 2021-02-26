<#
obtennir les recentes clé usb utilisées dans ce terminal 
#>

<#
.synopsis
collect usb activity from target computer

- user specifies the target computer

The script will produce details of usb activity on the specified target computer

.Description
This script collects usb activity and target computers

.parameter targetcomputer
specifies the computer to collect the usb activity

.parameter username
specifies the administrator to collect the username on the target computer 

.example

USBAcquire ComputerName
Collects the usb Activity on the target computer
#>

#script d'initialisation 
Clear-Host

#Parameter definition section 


param(
[string]$user,
[string]$targetComputer
)

Invoke-Command -ComputerName $targetComputer -Credential $User -ScriptBlock {Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Enum\USBSTOR\*\* | Select FriendlyName}

#result 

#Write-Host "historiques des clés usb de ce terminal $user " 
