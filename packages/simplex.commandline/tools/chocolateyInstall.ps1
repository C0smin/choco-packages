$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.0/simplex-chat-windows-x86-64'
    checksum     = '8646622B3B5E420F48326B2C700A29F086DA6E0422536B36B72C1E35AAFCDD21'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
