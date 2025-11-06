$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    unzipLocation = $toolsDir
    fileType      = 'ZIP'
    url           = 'https://github.com/patrickkfkan/reddit-dl/releases/download/v1.1.1/reddit-dl-1.1.1-win32-x64.zip'
    checksum      = '3FC0FE5FA20E929BA3650A4C42CBCE7437F643C0AB8D96AB793C4ACF9AADAAE2'
    checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

Remove-Item -Path "$toolsDir\$(([Uri]$packageArgs['url']).Segments[-1])" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:TEMP\chocolatey\$env:ChocolateyPackageName" -Recurse -Force -ErrorAction SilentlyContinue
