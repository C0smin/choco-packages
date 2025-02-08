$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$fileLocation = "$toolsDir\tasker_permissions.exe"

$webFileParameters = @{
    packageName  = $env:ChocolateyPackageName
    fileFullPath = $fileLocation
    url          = 'https://github.com/joaomgcd/Tasker-Permissions/releases/download/v0.2.0/tasker_permissions_portable.exe'
    checksum     = 'CBAF76EE717BB975ECF811ED727D5297240FED11AF385E286DF38B1DB6607240'
    checksumType = 'sha256'
}
Get-ChocolateyWebFile @webFileParameters
