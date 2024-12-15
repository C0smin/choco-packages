$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.2.1/simplex-chat-windows-x86-64'
    checksum     = '87080F0B9455F0553EBAEAE1C6F12188B60819E17CFA4ACB9CC41B5C0BCBA6A2'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
