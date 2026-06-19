# check-local-admins.ps1
# Purpose: Review local administrator group membership on a Windows endpoint.
# Lab/sanitized example only.

Write-Output "Local Administrators Group Members"
Write-Output "----------------------------------"

try {
    Get-LocalGroupMember -Group "Administrators" | Select-Object Name, ObjectClass, PrincipalSource
}
catch {
    Write-Output "Unable to query local administrators group. Run PowerShell as Administrator."
}
