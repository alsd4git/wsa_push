:: filename = wsa_push.bat
:: used to push a local file from your windows machine to a WSA (Windows Subsystem for Android) installation
:: Usage: wsa_push.bat filename_to_push.ext 
:: you can also use full path for the filename

@echo off

@REM Set download path (you may need to adjust for different android version, this one works with 13/WSA)
set DOWNLOAD_PATH=/sdcard/Download/
@REM Connect to adb
set PORT=58526

@REM Check if adb is installed and in system path
where adb >nul 2>nul
if %errorlevel% equ 0 (
    echo adb found in system path
) else (
    echo adb not found in system path, please install Android SDK and add to path
    echo you can use https://chocolatey.org/install and then "chocolatey install adb" on an elevated prompt
    pause
    exit /b 1
)

adb connect 127.0.0.1:%PORT%
if %errorlevel% neq 0 (
    echo Failed to connect to adb.
    pause
    exit /b 1
)

@REM Get Android version
for /f "tokens=*" %%a in ('adb shell getprop ro.build.version.release') do set ANDROID_VERSION=%%a
@REM echo Android version is %ANDROID_VERSION%

echo "connected"

@REM Push file to device
adb push %1 %DOWNLOAD_PATH%
