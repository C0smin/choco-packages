$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.5.5/simplex-chat-windows-x86-64'
    checksum     = 'A059462F41809C13409B9CAE6618D02E98B1A6F05689F14232CA99184CC50A4C'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
