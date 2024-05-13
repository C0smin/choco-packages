$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.7.3/simplex-desktop-windows-x86_64.msi'
    checksum       = '1976A13DF37C66D4D5F5C643291E3A9CD98DDBB06E97ADBA6C62E3D60320EE3F'
    checksumType   = 'sha256'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0, 1641, 3010)
}
Install-ChocolateyPackage @packageArgs
