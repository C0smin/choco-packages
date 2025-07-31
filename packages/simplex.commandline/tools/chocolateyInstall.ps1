$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.1/simplex-chat-windows-x86-64'
    checksum     = 'F4A896F7111C2D3B7D3B2E1F0CEA7DDAF6FBA77F65D7795E9F923453C09699AA'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
