$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente/photos-desktop/releases/download/v1.7.29/ente-1.7.29.exe'
    checksum       = '2E30FC36D253433B2C75C580633964A2961059E235D98ECA18AF78273B960F82'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente/photos-desktop/releases/download/v1.7.29/ente-1.7.29-x64.exe'
    checksum64     = '0EB606197538BEB8A8EF6679D9F4FC25DF43DE00801E4840409744CE2A3076A7'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
