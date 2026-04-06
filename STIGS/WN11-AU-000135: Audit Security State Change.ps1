<#
.SYNOPSIS:
Logs system startup, shutdown, and system time changes.
    

.NOTES
    Author          : Enrique Miranda
    LinkedIn        : https://www.linkedin.com/in//enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-06-04
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000135: Audit Security State Change

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE:
Used to verify system uptime and detect unauthorized reboots.
   
#>

# 1. Execute the audit policy change
auditpol /set /subcategory:"Security State Change" /success:enable

# 2. Provide feedback
if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully enabled Security State Change Auditing" -ForegroundColor Green
}
