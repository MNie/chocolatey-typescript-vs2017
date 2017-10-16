$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/7/0/A/70A6AC0E-8934-4396-A43E-445059F430EA/2.6.0-TS-release-dev14update3-20171007.2/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 2.6.0 RC'
  checksum		= '8778dd7bc26b34c98f78f3d169c3a8eba18fd761d038fc1e3b222d69c8dc820b'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs