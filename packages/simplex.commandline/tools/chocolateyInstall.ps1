$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.2/simplex-chat-windows-x86-64'
    checksum     = '7F967389A5B0F94926D0A533D2420EBF52B45446564DE16460D177351EC2E120'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
