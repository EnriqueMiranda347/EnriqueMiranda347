<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Enrique
    LinkedIn        : https://www.linkedin.com/in/enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-03-04
    Last Modified   : 2026-03-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>


# Define the registry path and property details
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"
$name = "MaxSize"
$value = 32768 # Hex 0x8000

# 1. Ensure the registry key path exists
if (!(Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
    Write-Host "Created registry key: $registryPath" -ForegroundColor Cyan
}

# 2. Set the DWORD value
Set-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWord

Write-Host "Successfully set $name to $value at $registryPath" -ForegroundColor Green
