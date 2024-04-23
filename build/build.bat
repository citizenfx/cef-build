@echo off

set GN_DEFINES=is_chrome_branded=false symbol_level=1 is_official_build=true use_thin_lto=false proprietary_codecs=true ffmpeg_branding=Chrome enable_widevine=true
set GYP_MSVS_VERSION=2022

set CURRENT_DIR=%~dp0
set DOWNLOAD_DIR=%CURRENT_DIR%..\chromium_git
set DEPOT_TOOLS_DIR=%CURRENT_DIR%..\depot_tools

:: Execute the build using dynamic paths
python automate-git.py^
 --url=https://github.com/citizenfx/cef.git^
 --checkout=cfx-m124^
 --download-dir=%DOWNLOAD_DIR%^
 --depot-tools-dir=%DEPOT_TOOLS_DIR%^
 --minimal-distrib-only^
 --x64-build^
 --no-cef-update^
 --no-debug-build^
 --no-depot-tools-update^
 --with-pgo-profiles %*