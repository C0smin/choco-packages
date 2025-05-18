$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\simplex.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/simplex-chat/simplex-chat/releases/download/v6.3.4/simplex-chat-windows-x86-64'
    checksum     = '25A49EC8849BD388666E0052392DA6819353BA43FF57C0FC2EA9E1081C57158F'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
