$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.1.1/simplex-chat-windows-x86-64'
    checksum     = '08FA6546DA6658132C754E6CB845C276A9D5ACB1526DC564B21AA41525385FB6'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
