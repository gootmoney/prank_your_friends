$Host.UI.RawUI.ForegroundColor = 'Green'

Write-Host 'Microsoft Windows (c) Microsoft Corporation. All rights reserved.`n'
$input = Read-Host 'Enter /e to begin you should also make it full screen by type F11 or Fn 11'

if ($input -ne '/e') {
    Write-Host 'Invalid input. Exiting...'
    exit
}

# Get all directories under C:\Windows\System32 recursively
$dirs = Get-ChildItem -Path 'C:\Windows\System32' -Directory -Recurse -ErrorAction SilentlyContinue | ForEach-Object { $_.FullName }

# Infinite loop to simulate "deleting" and then stream random paths continuously
while ($true) {
    # First, simulate deleting directories
    $dirs | ForEach-Object {
        Write-Host 'Deleting: ' $_
        Start-Sleep -Milliseconds 10  # Optional sleep between each "deletion"
    }

    # Then, stream random directory paths
    Write-Host '[✓] Directories loaded. Streaming random paths...`n'
    $randomDir = Get-Random -InputObject $dirs
    Write-Host $randomDir
    Start-Sleep -Milliseconds 1  # Adjustable delay for random path display
}
