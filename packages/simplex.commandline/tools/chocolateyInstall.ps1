$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.8.0/simplex-chat-windows-x86-64'
    checksum     = '6EF977134FB9896FF0DE3E2302AF472421F18CA37F157BA641476526AE0E4E6B'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
