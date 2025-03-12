$ErrorActionPreference = 'Stop'

$key = Get-UninstallRegistryKey -SoftwareName 'Ente*'

$uninstallDetails = ($key.QuietUninstallString | Select-String -Pattern '"(.+)" (.+)$').Matches.Groups.Value

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    validExitCodes = @(0, 3)
    file           = $uninstallDetails[1]
    silentArgs     = $uninstallDetails[2]
}

Uninstall-ChocolateyPackage @packageArgs
