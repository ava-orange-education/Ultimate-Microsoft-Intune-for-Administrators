# Define the folder name you want to create
$folderName = "MyNewFolder"
# Get the current user's Documents directory
$documentsPath = [Environment]::GetFolderPath("MyDocuments")
# Define the full path to the folder
$targetDir = Join-Path -Path $documentsPath -ChildPath $folderName
# Check if the folder already exists
if (Test-Path -Path $targetDir) {
    Write-Output "The folder '$folderName' already exists in the Documents directory."
} else {
    # Create the folder
    New-Item -Path $targetDir -ItemType Directory
    Write-Output "The folder '$folderName' has been created in the Documents directory."
}
# To run this script in the background, you can schedule it using Task Scheduler or run it as a background job
Start-Job -ScriptBlock {
    & $MyInvocation.MyCommand.Path
}
