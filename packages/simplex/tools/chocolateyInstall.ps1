$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.6.0/simplex-desktop-windows-x86_64.msi'
    checksum       = 'F2E5F43A55D5152477EAAC4384115AEE351C2151FCDBE0448E42852D36CEB0D2'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
