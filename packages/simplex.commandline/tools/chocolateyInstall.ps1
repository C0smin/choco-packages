$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.5.6/simplex-chat-windows-x86-64'
    checksum     = '04959A5DDA4B18F13CED21F3FB3310A08F6AEEC53DD3F2C09FF7B6F9FFFECF4A'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
