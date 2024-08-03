$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.8.2/simplex-desktop-windows-x86_64.msi'
    checksum       = '68B3B0C7F1927F158BDA324FA06E7FB376D3617E862D6A70C8F9DDD93240A653'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
