$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.2/simplex-desktop-windows-x86_64.msi'
    checksum       = '5262E0C26A152014497FD6390B613A26A43184998CE9BDFA02F0DF32343DB4EF'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
