$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.0.4/simplex-chat-windows-x86-64'
    checksum     = '07AA28465D3F2AE486C5842732B51FDAF520732E0DA4A36E6D9A97561FBAD214'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
