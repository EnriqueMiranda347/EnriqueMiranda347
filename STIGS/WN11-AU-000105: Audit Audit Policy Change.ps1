<#
.SYNOPSIS:
Logs an event if someone tries to change these very audit settings.
    

.NOTES
    Author          : Enrique Miranda
    LinkedIn        : https://www.linkedin.com/in//enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-06-04
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000105: Audit Audit Policy Change

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE:
Tracks changes to the local audit policy.
   
#>

 # 1. Execute the audit policy change
auditpol /set /subcategory:"Audit Policy Change" /success:enable

# 2. Provide feedback
if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully enabled Audit Policy Change Monitoring" -ForegroundColor Green
}
