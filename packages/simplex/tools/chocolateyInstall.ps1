$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.1.1/simplex-desktop-windows-x86_64.msi'
    checksum       = '5ADB015E2E812EC8BA60FAB862DCC14A3180968897A256B642B8C16E62070FCE'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
