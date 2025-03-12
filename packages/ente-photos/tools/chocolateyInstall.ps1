$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.10/ente-1.7.10.exe'
    checksum       = 'DDC35BB409D409C7F75EFBC69EBBEF3122A15C68BAA6AC4EDC0DA358D0BC932E'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.10/ente-1.7.10-x64.exe'
    checksum64     = '369476E2D6CBE3F3331E2B15C0B0A200A069268879025AEB083B294F77D56F5E'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
