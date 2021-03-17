#!/usr/bin/env bash
tracy_folder_root=$0

mkdir 3p
cd 3p
mkdir -p bin/release
mkdir -p LICENSES
mkdir -p bin/debug
mkdir -p lib/release
mkdir -p lib/debug
mkdir -p include/tracy/client
mkdir -p include/tracy/common

cp $tracy_folder_root/profiler/build/win32/x64/Release/Tracy.exe ./bin/release
cp $tracy_folder_root/update/build/win32/x64/Release/update.exe ./bin/release
cp $tracy_folder_root/capture/build/win32/x64/Release/capture.exe ./bin/release
cp $tracy_folder_root/import-chrome/build/win32/x64/Release/import-chrome.exe ./bin/release
cp $tracy_folder_root/csvexport/build/win32/x64/Release/csvexport.exe ./bin/release
cp $tracy_folder_root/library/win32/x64/Release/TracyProfiler.dll ./lib/release
cp $tracy_folder_root/library/win32/x64/Release/TracyProfiler.lib ./lib/release
cp $tracy_folder_root/*.hpp ./include/tracy
cp $tracy_folder_root/common/*.hpp ./include/tracy/common
cp $tracy_folder_root/client/*.hpp ./include/tracy/client
 
cp $tracy_folder_root/LICENSE ./LICENSES/Tracy.txt

echo $GIT_TAG_NAME > VERSION.txt 