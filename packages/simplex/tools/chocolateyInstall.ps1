$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.1/simplex-desktop-windows-x86_64.msi'
    checksum       = 'FA298BDCFE88DECFDFCB35E66101854595070BEAAB50DD50535A3D35590BB3BA'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
