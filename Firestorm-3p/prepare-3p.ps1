<#
Restructucture Tracy package for Firestorm-3p usage
#>
param ($tracy_folder_root)
Set-Location $tracy_folder_root
New-Item -ItemType directory -Path .\3p
Set-Location .\3p
mkdir -p bin\release
mkdir -p bin\debug
mkdir -p lib\release
mkdir -p lib\debug
mkdir -p include\tracy\client
mkdir -p include\tracy\common

Move-Item $tracy_folder_root\profiler\build\win32\x64\Release\Tracy.exe .\bin\release
Move-Item $tracy_folder_root\update\build\win32\x64\Release\update.exe .\bin\release
Move-Item $tracy_folder_root\capture\build\win32\x64\Release\capture.exe .\bin\release
Move-Item $tracy_folder_root\import-chrome\build\win32\x64\Release\import-chrome.exe .\bin\release
Move-Item $tracy_folder_root\csvexport\build\win32\x64\Release\csvexport.exe .\bin\release
Move-Item $tracy_folder_root\library\win32\x64\Release\TracyProfiler.dll .\lib\release
Move-Item $tracy_folder_root\library\win32\x64\Release\TracyProfiler.lib .\lib\release
Move-Item $tracy_folder_root\*.hpp .\include\tracy
Move-Item $tracy_folder_root\common\*.hpp .\include\tracy\common
Move-Item $tracy_folder_root\client\*.hpp .\include\tracy\client