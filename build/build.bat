set GN_DEFINES=is_chrome_branded=false symbol_level=1 is_official_build=true use_thin_lto=false ffmpeg_branding=Chrome proprietary_codecs=true
set GYP_MSVS_VERSION=2019
python automate-git.py^
 --download-dir=..\chromium_git^
 --depot-tools-dir=..\depot_tools^
 --minimal-distrib-only^
 --x64-build^
 --no-cef-update^
 --no-debug-build^
 --no-depot-tools-update %*