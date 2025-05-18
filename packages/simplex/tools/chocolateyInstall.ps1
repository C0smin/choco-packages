$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.4/simplex-desktop-windows-x86_64.msi'
    checksum       = '75BE5B8FA12112926FD086ED698B2E2D66527AFB7245E7A8F6719B2C05F3E49D'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
