$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    unzipLocation = $toolsDir
    fileType      = 'ZIP'
    url           = 'https://github.com/patrickkfkan/reddit-dl/releases/download/v1.0.0/reddit-dl-1.0.0-win32-x64.zip'
    checksum      = '5D2DD2CB28AEB22974CD178683824AA97AA2D68C738E0E968A90B3289A4C3F22'
    checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

Remove-Item -Path "$toolsDir\$(([Uri]$packageArgs['url']).Segments[-1])" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:TEMP\chocolatey\$env:ChocolateyPackageName" -Recurse -Force -ErrorAction SilentlyContinue
