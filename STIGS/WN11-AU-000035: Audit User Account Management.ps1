<#
.SYNOPSIS:
Logs when an account is created, enabled, disabled, or has a password changed.
    

.NOTES
    Author          : Enrique Miranda
    LinkedIn        : https://www.linkedin.com/in//enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-06-04
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000035: Audit User Account Management

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE:
Ensures every successful administrative change to a user account is recorded.
   
#>

# 1. Execute the audit policy change
auditpol /set /subcategory:"User Account Management" /success:enable

# 2. Provide feedback
if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully enabled User Account Management Auditing" -ForegroundColor Green
}
