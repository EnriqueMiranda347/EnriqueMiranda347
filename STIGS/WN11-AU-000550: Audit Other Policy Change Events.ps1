<#
.SYNOPSIS:
Captures changes to things like the Encrypting File System (EFS) or key permissions that aren't covered by other categories.
    

.NOTES
    Author          : Enrique Miranda
    LinkedIn        : https://www.linkedin.com/in//enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-06-04
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000550: Audit Other Policy Change Events

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE:
Ensures broad visibility into policy modifications.
   
#>

# 1. Execute the audit policy change
auditpol /set /subcategory:"Other Policy Change Events" /success:enable

# 2. Provide feedback
if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully enabled Other Policy Change Auditing" -ForegroundColor Green
}
