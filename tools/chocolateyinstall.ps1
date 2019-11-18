$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017-vs2019'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typescriptteam.gallerycdn.vsassets.io/extensions/typescriptteam/typescript-372/3.7.2/1572971454883/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 and 2019 3.7.2'
  checksum		= '850e6d90da3cc12119ff542bc472526c2a377984425e052520587de3c9ec0a02'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs