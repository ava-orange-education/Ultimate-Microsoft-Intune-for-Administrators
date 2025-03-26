# Determine the system drive dynamically
$systemDrive = $Env:SystemDrive
# Rebuild the path using string concatenation
$edgeShortcutPath = "$systemDrive\Users\Public\Desktop\Microsoft Edge.lnk"
# Test if the shortcut exists
if (Test-Path -Path $edgeShortcutPath) {
    Write-Host "Edge shortcut exists."
    exit 1
} else {
    Write-Host "Edge shortcut does not exist."
    exit 0
}
