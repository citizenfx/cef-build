# cef build environment for m103

## Prepare
0. Clone this repository to a folder directly on any drive (for me its E:\code)
1. Add depot_tools to PATH system variable
2. Add ninja to PATH system variable
3. Run build/prepare-depot.bat
4. Make sure Python 3.8+ is installed, it should be added above depot_tools in PATH variable
5. Make sure VS2022 is installed
6. Make sure 10.0.22621 SDK is installed (from visual studio installer)
7. In build/build.bat change download-dir and depot-tools-dir to the paths where you cloned this repo

## Verify your environment
1. Open a windows command prompt
2. Type `where ninja`, the output should show ninja/ninja.exe and depot_tools paths
3. Type `where python`, optimally it should show the path where you installed Python above depot_tools

## Building
1. Run build/build.bat

## Relevant docs
- https://bitbucket.org/chromiumembedded/cef/wiki/BranchesAndBuilding
- https://bitbucket.org/chromiumembedded/cef/wiki/AutomatedBuildSetup.md
- https://bitbucket.org/chromiumembedded/cef/wiki/MasterBuildQuickStart.md