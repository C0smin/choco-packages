$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente/photos-desktop/releases/download/v1.7.24/ente-1.7.24.exe'
    checksum       = 'DCF829E3401CF26ECC1A53A98631B782136A6FEF76B53BB77F11C7157193BC93'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente/photos-desktop/releases/download/v1.7.24/ente-1.7.24-x64.exe'
    checksum64     = '7312BD0971F2E307019B902D9EC7FEBB227B5497101370D70800559B37253586'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
