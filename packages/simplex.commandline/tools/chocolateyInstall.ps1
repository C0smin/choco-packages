$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.7.0/simplex-chat-windows-x86-64'
    checksum     = 'BD7E6BF7CA8332101765F3940FC1CE8712E885359B07443584C65B6ED3074C6E'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
