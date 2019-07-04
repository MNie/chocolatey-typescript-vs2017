$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017-vs2019'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typescriptteam.gallerycdn.vsassets.io/extensions/typescriptteam/typescript-352/3.5.2/1560448796344/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 and 2019 3.5.2'
  checksum		= '1e8a6a893884854cbe81a09094e1f357745ac57b92689d626bb1ab11ca94d03d'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs