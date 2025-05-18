$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.12/ente-1.7.12.exe'
    checksum       = '2B38A1C97C373EF0B1072C9CD0018139E444554782325B5C5E99E3EBB13394A2'
    checksumType   = 'sha256'
    url64          = 'https://github.com/ente-io/photos-desktop/releases/download/v1.7.12/ente-1.7.12-x64.exe'
    checksum64     = '12DDF47EB28CD543F139B1A80655E96156371DB8227B4F349ED18992C110D1EB'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
