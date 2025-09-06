$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.4/simplex-desktop-windows-x86_64.msi'
    checksum       = '57BA1682EC1CBB2B9499ABF2ACD4E7A0C3897DD5E36DCCE5FD217D9811CEA66C'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
