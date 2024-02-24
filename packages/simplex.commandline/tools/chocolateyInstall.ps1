$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.5.4/simplex-chat-windows-x86-64'
    checksum     = '977AFBBBC1498A4D44083147EE8A56D0EA775D0C1D83AE92DC9A62013B38CCE3'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
