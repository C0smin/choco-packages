$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.2.4/simplex-chat-windows-x86-64'
    checksum     = '15A8EF17B0CA88A0FDE07FA36EF63DBCD0119D9014AD2751E03AA6BC06E6FC4B'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
