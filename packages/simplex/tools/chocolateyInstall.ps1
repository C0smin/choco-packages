$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.6/simplex-desktop-windows-x86_64.msi'
    checksum       = 'FB39CDD93E5A6C9CD0198FEDAF86505B0D0EDF08EAF7B876D0BCE31D4D439FF7'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
