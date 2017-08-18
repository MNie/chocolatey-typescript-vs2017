$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/7/0/A/70A6AC0E-8934-4396-A43E-445059F430EA/2.5.0-TS-release-dev14update3-20170816.2/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 2.4.1.0'
  checksum		= '4cd1c0f11bcfd3928ee4e894cb7e2635d5d72ca0'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs