# README

This script connects to your WSA virtual machine through adb and pushes a file from your computer to your WSA filesystem.

## Usage
1. Open the command prompt.
2. Navigate to the folder where the script is saved. or copy the script to a folder in your PATH.
3. Type the following to push a file to your device: `wsa_push.bat file_path/filename.extension` (replace `file_path/filename.extension` with the path and name of the file you want to push)

## Requirements
- WSA started with debugging on and adb enabled.
- Android SDK installed and added to your system path.
- File to push to your device.

## Installation
1. Download the script.
2. Save the script to a folder on your computer.
3. Open the command prompt and navigate to the folder where the script is saved, or copy the script to a folder in your PATH.

## Configuration
- You may need to adjust the `DOWNLOAD_PATH` variable to match the device's Android version.

## Notes
- If ADB is not installed in your system path, the script will prompt you to install Android SDK and add it to your system path.
- If the script fails to connect to ADB, check that WSA has started and ADB debugging is enabled.
- The script will output the device's Android version for reference.
- The script will push the specified file to the Download folder on the device.

## Example
To push a file called "example-file.txt" located in the "C:\Users\Username\Desktop" folder to the device, type the following command in the command prompt:
`wsa_push.bat C:\Users\Username\Desktop\example-file.txt`