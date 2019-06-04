$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017-vs2019'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typescriptteam.gallerycdn.vsassets.io/extensions/typescriptteam/typescript-345-vs2017/3.4.5/1556141176351/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 and 2019 3.4.5'
  checksum		= '2162b7686e943efd30f43c4da4bd20295470701e3c50fde4cd2ec661e2ab20e3'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs