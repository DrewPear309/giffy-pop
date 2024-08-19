@echo off
setlocal enabledelayedexpansion

:: Allow user to browse for folder
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder',0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

if "%folder%"=="" (
    echo No folder selected. Exiting...
    exit /b
)

echo Selected folder: %folder%

:: Confirm with user
set /p "confirm=Are you sure you want to rename all files in this folder? (Y/N): "
if /i "%confirm%" neq "Y" (
    echo Operation cancelled. Exiting...
    exit /b
)

:: Initialize counter
set "count=1"

:: Rename files
for %%F in ("%folder%\*.*") do (
    set "oldName=%%~nxF"
    set "extension=%%~xF"
    
    :: Format the count to have leading zeros
    set "newName=0000!count!"
    set "newName=!newName:~-4!!extension!"
    
    ren "%%F" "!newName!"
    echo Renamed: !oldName! to !newName!
    
    set /a "count+=1"
)

echo.
echo Renaming complete. %count% files were renamed.
pause