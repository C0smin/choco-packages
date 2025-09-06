$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.4/simplex-chat-windows-x86-64'
    checksum     = '1310250CBFE2D5960A20CAA428A6F562DFC9EDBAE307A6852266C8B719E35AB3'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
