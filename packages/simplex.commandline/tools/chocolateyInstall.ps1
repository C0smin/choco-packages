$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.7.2/simplex-chat-windows-x86-64'
    checksum     = 'D694C55E5FDB398717E1B4FF5A1B57A0FC8D26CB590E5D429C4ADD663DECD9DF'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
