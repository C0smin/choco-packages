$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.8.2/simplex-chat-windows-x86-64'
    checksum     = 'E5B244A230600DED09F3E9E7F70C5C0D7854D9ABAC079E1E92B6804DDC548697'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
