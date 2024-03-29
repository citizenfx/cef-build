@echo off
cd ../depot_tools
rmdir /s /q .cipd_bin
rmdir /s /q .cipd_client_cache
rmdir /s /q .versions
rmdir /s /q external_bin
del .cipd_client.exe
del gclient_utils.pyc
del git-bash
del git.bat
del gitk.bat
del metrics.cfg
del python_bin_reldir.txt
del python.bat
del python3_bit_reldir.txt
del python3.bat
del ssh-keygen.bat
del sh.bat
del subrpocess2.pyc
cd bootstrap
call win_tools.bat
cd ../../build