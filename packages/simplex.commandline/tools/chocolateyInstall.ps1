$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.6/simplex-chat-windows-x86-64'
    checksum     = '5A308CFD559FCAA981F5D75D886F2C1E755ED5CB9A771CD4C07A9D6D704E9A7A'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
