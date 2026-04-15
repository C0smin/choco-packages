$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.22/ente-1.7.22.exe'
    checksum       = '101B67F2C49C2F9F0DB81C4C3B675E2A3BB2C9EEE25F6FBC9F09668818E86E19'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.22/ente-1.7.22-x64.exe'
    checksum64     = '02859D71891E1245D0BDF0610A80E04D38266EB78880825E9FFFB46044AB3A3E'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
