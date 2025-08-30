$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.3.1/simplex-desktop-windows-x86_64.msi'
    checksum       = '78E2D7A4F41C9CE1D579DF678BFDFB4952176A4B333B3FADF0E4339473B1B994'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
