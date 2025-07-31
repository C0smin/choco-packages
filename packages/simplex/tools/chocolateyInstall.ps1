$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.1/simplex-desktop-windows-x86_64.msi'
    checksum       = '3933DEE83E9700A6D35EC8A8213DDE8B03FC1F34BFC25141844B6CBD8B724821'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
