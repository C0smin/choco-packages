$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    unzipLocation = $toolsDir
    fileType      = 'ZIP'
    url           = 'https://github.com/patrickkfkan/reddit-dl/releases/download/v1.1.2/reddit-dl-1.1.2-win32-x64.zip'
    checksum      = 'E5E61E4CC71A12F8779B9B051C043657F49E0B77ADEC2DFA06F6EC4E36CA7C7D'
    checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

Remove-Item -Path "$toolsDir\$(([Uri]$packageArgs['url']).Segments[-1])" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:TEMP\chocolatey\$env:ChocolateyPackageName" -Recurse -Force -ErrorAction SilentlyContinue
