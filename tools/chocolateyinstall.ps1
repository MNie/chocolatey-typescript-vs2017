$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2017'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/7/0/A/70A6AC0E-8934-4396-A43E-445059F430EA/2.9.2-TS-release-dev14update3-20180612.2/TypeScript_SDK.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2017 2.9.2'
  checksum		= 'ef614aba161ff4e9ec5ea31dafe23ff0dc470a80d427e8b88f7fc9dd061f1311'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs