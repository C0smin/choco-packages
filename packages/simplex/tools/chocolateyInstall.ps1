$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.5.5/simplex-desktop-windows-x86_64.msi'
    checksum       = 'C27D255C7A768117B8B7503E87C86185514C8E58E39564517A1CDE8FFE5797AD'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
