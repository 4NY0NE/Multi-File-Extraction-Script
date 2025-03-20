# ======================================================#
#         ___  _   _ __   __ _____  _   _  _____ 
#        /   || \ | |\ \ / /|  _  || \ | ||  ___|
#       / /| ||  \| | \ V / | | | ||  \| || |__
#      / /_| || . ` |  \ /  | | | || . ` ||  __|
#      \___  || |\  |  | |  \ \_/ /| |\  || |___
#          |_/\_| \_/  \_/   \___/ \_| \_/\____/
#     Follow me on github: https://github.com/4NY0NE                                    
# ======================================================#

$sourceDir = Read-Host "Enter the full path to the folder containing the files (.zip and .rar). (Example: .\path)"
$destinationDir = Read-Host "Enter the full path to the folder where the files will be extracted. (Example: .\path)"
$destinationDir = $destinationDir.Trim('"')

if (-not (Test-Path $sourceDir)) {
    Write-Host "Source folder '$sourceDir' not found. Check the path and try again."
    exit
}

if (-not (Test-Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir | Out-Null
    Write-Host "Destination folder '$destinationDir' created."
}

$sevenZipPath = "C:\Program Files\7-Zip\7z.exe"

$zipFiles = Get-ChildItem -Path $sourceDir -Filter *.zip -ErrorAction SilentlyContinue
$rarFiles = Get-ChildItem -Path $sourceDir -Filter *.rar -ErrorAction SilentlyContinue

if ((-not $zipFiles) -and (-not $rarFiles)) {
    Write-Host "No .zip or .rar files found in the folder '$sourceDir'."
    exit
}

foreach ($zip in $zipFiles) {
    try {
        Write-Host "Extracting (ZIP): $($zip.FullName)"
        Expand-Archive -Path $zip.FullName -DestinationPath $destinationDir -Force
    }
    catch {
        Write-Host "Error extracting $($zip.FullName): $_"
    }
}

foreach ($rar in $rarFiles) {
    try {
        Write-Host "Extracting (RAR): $($rar.FullName)"
        & $sevenZipPath x $rar.FullName -o"$destinationDir" -y
    }
    catch {
        Write-Host "Error extracting $($rar.FullName): $_"
    }
}

Write-Host "Extraction complete!"

$deleteZip = Read-Host "Do you want to permanently delete the original .zip files? (Y/N)"
if ($deleteZip -match "^[yY]") {
    foreach ($zip in $zipFiles) {
        try {
            Remove-Item $zip.FullName -Force
            Write-Host "File deleted: $($zip.FullName)"
        }
        catch {
            Write-Host "Error deleting $($zip.FullName): $_"
        }
    }
    Write-Host ".zip files deleted."
}
else {
    Write-Host ".zip files were not deleted."
}

$deleteRar = Read-Host "Do you want to permanently delete the original .rar files? (Y/N)"
if ($deleteRar -match "^[yY]") {
    foreach ($rar in $rarFiles) {
        try {
            Remove-Item $rar.FullName -Force
            Write-Host "File deleted: $($rar.FullName)"
        }
        catch {
            Write-Host "Error deleting $($rar.FullName): $_"
        }
    }
    Write-Host ".rar files deleted."
}
else {
    Write-Host ".rar files were not deleted."
}

Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
