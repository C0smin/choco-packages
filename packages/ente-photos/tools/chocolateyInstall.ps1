$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.13/ente-1.7.13.exe'
    checksum       = 'D8D4A7AFA0EA7C919C1A01E2BEFE1AF37DB8F46FA8351D8A20A4B1E6CAE732F3'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.13/ente-1.7.13-x64.exe'
    checksum64     = '093177C6F5B374AA441F7FC4F03F1D693EC9EB8315DEF19721D3DEE0549BB362'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
