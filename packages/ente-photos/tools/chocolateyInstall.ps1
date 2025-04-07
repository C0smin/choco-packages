$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.11/ente-1.7.11.exe'
    checksum       = 'DE0F5ADFCBFB190CB91B794178F0043787DB05E069DA93244539EBF491660F42'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.11/ente-1.7.11-x64.exe'
    checksum64     = '2C3CE18E4AC9E585A210EC1281D3CBE65E8DFA9E6899A8E5CD370F616940A39A'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
