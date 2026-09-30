$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v7.0.3/simplex-chat-windows-x86-64'
    checksum     = '33ECEDFAC9331F8659EC1FBBC2A0828A29A3B6EEC5F9FF2017153DDED50AE2C7'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
