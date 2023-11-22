
# WTA

## Overview
WTA is a simple, yet effective command-line utility written in Dart. It allows users to open a new instance of Windows Terminal with administrator privileges at the current directory. This tool is particularly useful for developers and system administrators who frequently need elevated command-line sessions.

## Installation

1. **Download the Executable**:
   - Get `wta.exe` from the out folder of this repo.

2. **Add to PATH (Optional)**:
   - To run `wta` from any directory, add the directory where `wta.exe` is located to your system's PATH environment variable.

## Usage

1. **Open Command Prompt**:
   - Open a standard Command Prompt window or any other command-line interface.

2. **Run WTA**:
   - Type `wta` and press Enter. This will open Windows Terminal as an administrator in the current directory.

## How It Works

- The `wta` tool checks if a PowerShell script named `wta-ps.ps1` exists in the Windows temporary folder.
- If it does not exist, `wta` creates the script. This script is responsible for launching Windows Terminal with administrator rights.
- `wta` then executes the PowerShell script, elevating the Windows Terminal session.

## How to compile
1. Install Dart SDK:
    - Ensure you have the Dart SDK installed on your system. You can download it from the [Dart SDK official website](https://dart.dev/get-dart).

2. Clone or Download the Source Code:
    - Obtain the source code for the WTA tool. This can be done by cloning the repository or downloading the source files directly. (Note: include a link to the repository or source files here)

3. Navigate to the Source Directory:
    - Open a command prompt or terminal window.
    - Navigate to the directory where the WTA source code is located.

4. Run the Compile Command:
    - Execute the following command to compile the source code:
    ```
    dart compile exe -o out/wta.exe bin/wta.dart
    ```
    - This command compiles the `wta.dart` file located in the bin folder to an executable named `wta.exe`.
5. Executable File:
    - After the compilation is complete, you will find the wta.exe executable in the out directory.
    - You can now use this executable following the installation and usage instructions provided earlier in this README.

## Requirements

- Windows 10 or later.
- Dart SDK for compiling the source code (if necessary).
- Windows Terminal installed on your system.

## Security

- Running the tool requires administrator privileges, which will prompt a User Account Control (UAC) dialog.
- Ensure that you understand the security implications of running scripts with elevated privileges.

## License

- This tool is released under the MIT License. See the LICENSE file for more details. (Note: include a LICENSE file if you're open-sourcing this tool)

*This tool is developed and maintained by RednibCoding (Michael Binder).*
