$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.6/simplex-chat-windows-x86-64'
    checksum     = 'ECE4A681582874A30AC0A7890C136F821CCDD3C89DB38909527D2E8043C2888B'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
