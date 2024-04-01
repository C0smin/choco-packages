$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.6.0/simplex-chat-windows-x86-64'
    checksum     = 'B7C4011EA356AD9FE7D7428C644FE85F23FB593EBF3AB92CEF320EA96920B0EC'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
