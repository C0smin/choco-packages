$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.2.4/simplex-desktop-windows-x86_64.msi'
    checksum       = '8193E4DEE6A90C49746D6A3679820068F8ADF003B98C5AD761C5A6A2EA3F6321'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
