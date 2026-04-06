<#
.SYNOPSIS: 
Forces the system to require a PIN in addition to the TPM chip before the OS boots. This prevents automated "cold boot" attacks.
    

.NOTES
    Author          : Enrique Miranda
    LinkedIn        : https://www.linkedin.com/in//enrique-miranda-3777942a1/
    GitHub          : https://github.com/EnriqueMiranda347
    Date Created    : 2026-06-04
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN-AU-000031

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE: 
Run this to set the policy that allows and requires a PIN for the OS drive.
    
     
#>

# Define the registry path and property details
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\FVE"
$values = @{
    "UseAdvancedStartup" = 1
    "UseTPMPIN"          = 1
    "UseTPMKeyPIN"       = 1
}

# 1. Ensure the registry key path exists
if (!(Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
    Write-Host "Created registry key: $registryPath" -ForegroundColor Cyan
}

# 2. Set the DWORD values for TPM+PIN Requirement
foreach ($name in $values.Keys) {
    Set-ItemProperty -Path $registryPath -Name $name -Value $values[$name] -Type DWord
}

Write-Host "Successfully enabled BitLocker TPM+PIN policies at $registryPath" -ForegroundColor Green
