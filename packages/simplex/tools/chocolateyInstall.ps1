$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.6/simplex-desktop-windows-x86_64.msi'
    checksum       = 'BEA77D8229D0CB858F536F82D611DD8606F8842CFBB509472907DCB77DD0BBD5'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
