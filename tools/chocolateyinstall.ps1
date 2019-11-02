$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017-vs2019'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typescriptteam.gallerycdn.vsassets.io/extensions/typescriptteam/typescript-364/3.6.4/1570725321661/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 and 2019 3.6.4'
  checksum		= '73a614a19e99f29411fae0fe91f3c6dd14db4e70cc2be005aeed5c080930809a'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs