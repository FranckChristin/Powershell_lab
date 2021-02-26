<#This script automates the extraction of information from the
specified log file
#>

# Parameter definition section

param (
[string]$targetLogName = "System",
[int]$eventaccount = 20,
[string]$eventType = "information",
[string]$reportTitle = "Event Log Daily Report",
[string]$targetcomputer= $env:COMPUTERNAME 
)

#Get the current date and time
$rptDate = Get-Date
$time = ([DateTimeOffset]$rptDate).ToUnixTimeSeconds()

#create html selection
$hearder = @"
<style>
TABLE {border-width: 1px; border-style: solid; border-color: black border-collapse: collapse}
TD {border-width: 1px; padding: 3px; border-style: solid; border-color : red;}
</style>
<p>
<b> $reportTitle $rptDate </b>
<p>
Event Log Selction: <b>$targetLogName</b>
<p>
Target Computer(s) Selection: <b> $targetcomputer</b>
<p>
Event Type Filter: <b>$eventType</b>
<p>
"@


#Repport filename creation
$ReportFile  = ".\Report-"+$time+".HTML"

#CmdLet Pipeline execution
Get-EventLog -ComputerName $targetcomputer -LogName $targetLogName -Newest $eventaccount -EntryType $eventType `| ConvertTo-Html -Head $hearder -Property timegenerated,EntryType, Message | Out-File $ReportFile<#for the exuction we have this example :
.\EventProcessor.ps1 -reportTitle "Python Forensics Daily Log Report" -eventCount 100 -eventType error#>