$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.11/simplex-desktop-windows-x86_64.msi'
    checksum       = '9F64FC03C8F8756805DD25699D7B7EC364259495AA6F4F623035B85163AC9750'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
