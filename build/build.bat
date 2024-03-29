set GN_DEFINES=is_chrome_branded=false symbol_level=1 is_official_build=true use_thin_lto=false proprietary_codecs=true ffmpeg_branding=Chrome enable_widevine=true
set GYP_MSVS_VERSION=2022
python automate-git.py^
 --url=https://github.com/citizenfx/cef.git^
 --checkout=cfx-m124^
 --download-dir=e:\code2\chromium_git^
 --depot-tools-dir=e:\code2\depot_tools^
 --minimal-distrib-only^
 --x64-build^
 --no-cef-update^
 --no-debug-build^
 --no-depot-tools-update^
 --with-pgo-profiles