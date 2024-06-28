$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v5.8.1/simplex-chat-windows-x86-64'
    checksum     = 'BE5442382DEE4D149EE6EED0840CCAC56465AB7062C59560178E66B9C58993A2'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
