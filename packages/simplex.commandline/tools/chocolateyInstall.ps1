$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.2.0/simplex-chat-windows-x86-64'
    checksum     = '3E83038B9FF1958EEE13E14454DC77849069EA0DF87E0CBD182A9F93A67CBFEF'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
