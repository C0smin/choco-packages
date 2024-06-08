$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.8.0/simplex-desktop-windows-x86_64.msi'
    checksum       = '2C257CDD71BBF2C31EEB31C26E1584AAA5D81D1D6DCAD4FE62449886C26F0712'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
