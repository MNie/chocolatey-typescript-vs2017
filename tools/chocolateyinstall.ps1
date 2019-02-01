$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typescriptteam.gallerycdn.vsassets.io/extensions/typescriptteam/typescript-331-vs2017/3.3.1/1548962824367/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 3.3.1'
  checksum		= '97a7baf1e9af0d5c996d2501ebe44e56e1a1afe096f2c64b5528b7885a548714'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs