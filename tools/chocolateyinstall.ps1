$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/7/0/A/70A6AC0E-8934-4396-A43E-445059F430EA/2.9.0-TS-release-dev14update3-20180514.1/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 2.9.0-RC'
  checksum		= '29ed5b89e90ff9e4dcf6241b320564aeda18a3bc738c5c4a0299f36e6695a4ff'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs