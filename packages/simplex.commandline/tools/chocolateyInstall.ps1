$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.5.5/simplex-chat-windows-x86-64'
    checksum     = '60AB71D7E0AB67A65E947769176E0C79C053BA9C5E13C772F2A24058A0A01B9E'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
