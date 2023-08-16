# URLs of the software to be downloaded
$url1 = "https://download.microsoft.com/download/E/4/7/E4771905-1079-445B-8BF9-8A1A075D8A10/IntegrationRuntime_5.30.8555.1.msi"
$url2 = "https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup_x64.exe"

# Paths where the downloaded files will be saved
$output1 = "C:\path\to\IntegrationRuntime_5.30.8555.1.msi"
$output2 = "C:\path\to\PBIDesktopSetup_x64.exe"

# Download the .msi file
Invoke-WebRequest -Uri $url1 -OutFile $output1

# Download the .exe file
Invoke-WebRequest -Uri $url2 -OutFile $output2

# Install the .msi file (silent installation)
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $output1 /quiet"

# Install the .exe file (silent installation, add arguments as needed for the specific installer)
Start-Process -FilePath $output2 -ArgumentList "/S"
