<#
.SYNOPSIS:
Increases the Security Log capacity to 1GB to prevent losing audit data due to overwriting.
    

.NOTES
    Author          : Enrique Miranda
    LinkedIn        : https://www.linkedin.com/in//enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-06-04
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000510: Security Event Log Size

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE:
Critical for maintaining long-term forensic trails.
   
#>

# Define the log name and the required size
$logName = "Security"

# 1. Use the native PowerShell command to set the maximum size
Limit-EventLog -LogName $logName -MaximumSize 1024MB

Write-Host "Successfully set $logName Log MaxSize to 1024MB" -ForegroundColor Green
