$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/7/0/A/70A6AC0E-8934-4396-A43E-445059F430EA/2.8.0-TS-release-dev14update3-20180313.3/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 2.8-RC'
  checksum		= 'c8dc6bf05f5f41c6a1d6d529567805e05e430dc024ae0a48aa96aabea75cf370'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs