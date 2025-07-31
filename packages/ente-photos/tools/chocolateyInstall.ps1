$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.14/ente-1.7.14.exe'
    checksum       = 'ECB1D95CB5D786676CE62670EF4511FE684B8459B9E77B0E0C8BCD1DFED8D322'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.14/ente-1.7.14-x64.exe'
    checksum64     = '4F8CA620A06B1DCB48D53BBB2671E507BC017769094D82AFE9017D93E7E798DD'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
