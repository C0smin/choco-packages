$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.1/simplex-chat-windows-x86-64'
    checksum     = 'A957E8838F61349E350B94F796CB355FD3C099CD80FFDA28372C31CEBCCD0B7B'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
