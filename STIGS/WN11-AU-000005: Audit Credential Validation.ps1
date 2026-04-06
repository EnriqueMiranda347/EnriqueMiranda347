<#
.SYNOPSIS:
Logs whenever a user provides a wrong password for a local account. Essential for detecting brute-force attempts.
    

.NOTES
    Author          : Enrique Miranda
    LinkedIn        : https://www.linkedin.com/in//enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-06-04
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000005: Audit Credential Validation

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE:
Configures the "Account Logon" audit subcategory for failures.
   
#>

# 1. Execute the audit policy change
auditpol /set /subcategory:"Credential Validation" /failure:enable

# 2. Provide feedback
if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully enabled Credential Validation Failure Auditing" -ForegroundColor Green
}
