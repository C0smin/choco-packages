$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.15/ente-1.7.15.exe'
    checksum       = '9CD37A9AC1128975707A5741078859116D17FFE8252643BDB5EC165F11F759DF'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.15/ente-1.7.15-x64.exe'
    checksum64     = '4D412714D78C66D055D5D93F954B75E14B9A59B3813C3B4ECD99563F4BAB6AD1'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
