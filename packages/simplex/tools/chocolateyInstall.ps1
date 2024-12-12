$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.2.0/simplex-desktop-windows-x86_64.msi'
    checksum       = '9D59CA28243724A6DDDA2AA14DECCE2FD4060C9B8D90A06007A785B1092F9433'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
