$ErrorActionPreference = 'SilentlyContinue'

Set-Location -Path "..\depot_tools"

Remove-Item -Path ".cipd_bin", ".cipd_client_cache", ".versions", "external_bin" -Recurse -Force
Remove-Item -Path ".cipd_client.exe", "gclient_utils.pyc", "git-bash", "git.bat", "gitk.bat", "metrics.cfg", "python_bin_reldir.txt", "python.bat", "python3_bit_reldir.txt", "python3.bat", "ssh-keygen.bat", "sh.bat", "subrpocess2.pyc" -Force

Set-Location -Path "bootstrap"

& ".\win_tools.bat"

Set-Location -Path "..\..\build"
