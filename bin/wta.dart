import 'dart:io';

void main() async {
  // PowerShell script content
  const psScript = r'Start-Process wt -ArgumentList "-d `"$PWD`"" -Verb RunAs';

  // Get the path to the Windows Temp folder
  final tempPath = Directory.systemTemp.path;

  // Create the full path for the PowerShell script
  final psFilePath = '$tempPath\\wta-ps.ps1';

  // Check if the PowerShell script exists, if not, create it
  final psFile = File(psFilePath);
  if (!await psFile.exists()) {
    await psFile.writeAsString(psScript);
    print('PowerShell script created at $psFilePath');
  }

  // Execute the PowerShell script
  final result = await Process.run(
      'powershell', ['-ExecutionPolicy', 'Bypass', '-File', psFilePath]);

  // Print the output of the PowerShell script execution
  print(result.stdout);
  print(result.stderr);
}
