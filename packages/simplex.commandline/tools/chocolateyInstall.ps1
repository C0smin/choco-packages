$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.7.3/simplex-chat-windows-x86-64'
    checksum     = 'DE43EFE168B3688A2F25EAE1F8F1A1955FEAF531057F44C6C6548F315BE70B82'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
