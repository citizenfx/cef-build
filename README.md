# cef build environment for m103

## Prepare
0. Clone this repository to a folder directly on any drive (for me its E:\code)
1. Add depot_tools to PATH system variable
2. Add ninja to PATH system variable
3. Run depot_tools/bootstrap/win_tools.bat
4. Make sure Python 3.8+ is installed
5. Make sure VS2019 is installed
6. Make sure 10.0.20348 SDK is installed (from visual studio installer)

## Verify your environment
1. Open a windows command prompt
2. Type `where ninja`, the output should show ninja/ninja.exe and depot_tools paths
3. Type `where python`, optimally it should show depot_tools and only one where you installed Python

## Building
1. Run build/build.bat

## Repo structure explanation
In order to build CEF, you need to download an automate-git.py first, which matches your CEF version. Its available in older CEF branches in tools folder.
Then you have to run this automation script which will download depot_tools, CEF and chromium. 
These steps can be skipped by adding automate-git.py to this repository, then adding the old depot_tools and our CEF repo as submodules. This way you can basically create an older and working environment to build outdated versions.
The no-depot-tools-update and no-cef-update parameters in build.bat are there to prevent overriding our submodules by the automate script.
Chromium is not added as a submodule, the target version is set in CEF repo, in CHROMIUM_BUILD_COMPATIBILITY.txt.
Ninja is included to avoid possible errors with building.

## Relevant docs
- https://bitbucket.org/chromiumembedded/cef/wiki/BranchesAndBuilding
- https://bitbucket.org/chromiumembedded/cef/wiki/AutomatedBuildSetup.md
- https://bitbucket.org/chromiumembedded/cef/wiki/MasterBuildQuickStart.md