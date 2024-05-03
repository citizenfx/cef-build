# Define environment variables
$env:GN_DEFINES = "is_chrome_branded=false symbol_level=1 is_official_build=true use_thin_lto=false proprietary_codecs=true ffmpeg_branding=Chrome"
$env:GYP_MSVS_VERSION = "2022"

# Get the current directory of the script
$CURRENT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host "Current directory: $CURRENT_DIR"

# Define the directory to be mounted
$MOUNT_DIR = Split-Path -Path $CURRENT_DIR -Parent
Write-Host "Mount directory: $MOUNT_DIR"

Invoke-Expression "subst X: /D" -ErrorAction SilentlyContinue
Invoke-Expression "subst X: $MOUNT_DIR" -ErrorAction SilentlyContinue

# Define more variables using the new drive mapping
$DOWNLOAD_DIR = "X:\chromium_git"
$DEPOT_TOOLS_DIR = "X:\depot_tools"

# Execute the build using dynamic paths
& python "X:\build\automate-git.py" `
    --url="https://github.com/citizenfx/cef.git" `
    --checkout="cfx-m124" `
    --download-dir="$DOWNLOAD_DIR" `
    --depot-tools-dir="$DEPOT_TOOLS_DIR" `
    --x64-build `
    --no-cef-update `
    --no-depot-tools-update `
    --with-pgo-profiles $args

# Attempt to clean up and remove X: mapping at the end; ignore errors
Invoke-Expression "subst X: /D" -ErrorAction SilentlyContinue
