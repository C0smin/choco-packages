$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente/photos-desktop/releases/download/v1.7.30/ente-1.7.30.exe'
    checksum       = '4438B03AFD1121CFC5C41D0CD3DA5E355F10A14AC315077A16B1C7C27EE606E5'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente/photos-desktop/releases/download/v1.7.30/ente-1.7.30-x64.exe'
    checksum64     = '729019310140D820848231F8BC380272EBB60D181775835C43E4A16F9A4E0678'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
