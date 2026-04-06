<#
.SYNOPSIS:
Logs when a user exercises rights, like taking ownership of files or bypassing traverse checking.
    

.NOTES
    Author          : Enrique Miranda
    LinkedIn        : https://www.linkedin.com/in//enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-06-04
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000120: Audit Sensitive Privilege 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE:
Critical for tracking what "Local Admin" accounts are actually doing.
   
#>

# 1. Execute the audit policy change
auditpol /set /subcategory:"Sensitive Privilege Use" /success:enable /failure:enable

# 2. Provide feedback
if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully enabled Sensitive Privilege Use Auditing" -ForegroundColor Green
} 
