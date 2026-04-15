$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.11/simplex-chat-windows-x86-64'
    checksum     = 'B2E2F423F111313509A60F77E4758DA5B728367C4A304AE0EB995ED0CDB3791C'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
