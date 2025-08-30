$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.3.1/simplex-chat-windows-x86-64'
    checksum     = 'E6F4AABCF154DF721A83AB4A4C402BF18CCE3881E5AA14FAC9C70F74E121CEC6'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
