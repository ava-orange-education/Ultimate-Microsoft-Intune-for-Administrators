# Determine the system drive dynamically
$systemDrive = $Env:SystemDrive
# Rebuild the path using string concatenation
$edgeShortcutPath = "$systemDrive\Users\Public\Desktop\Microsoft Edge.lnk"
# Test if the shortcut exists
if (Test-Path -Path $edgeShortcutPath) {
    # If it exists, remove the shortcut
    Remove-Item -Path $edgeShortcutPath -Force
    Write-Host "Edge shortcut removed."
} else {
    Write-Host "Edge shortcut not found, nothing to remove."
}
