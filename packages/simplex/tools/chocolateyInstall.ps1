$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.2.1/simplex-desktop-windows-x86_64.msi'
    checksum       = 'B2180A5957431A1CC7775173D689DFD5477F8E7A0F6A45C9DB8B47DC693680C9'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
