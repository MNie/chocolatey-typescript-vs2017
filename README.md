# chocolatey-typescript-vs2017
[![chocolatey](https://img.shields.io/chocolatey/dt/typescript-vs2017.svg)](https://chocolatey.org/packages/typescript-vs2017)
[![Chocolatey version](https://img.shields.io/chocolatey/v/typescript-vs2017.svg)](https://chocolatey.org/packages/typescript-vs2017)


Chocolatey package which includes typescripts sdk for vs2017
## How to install?
`choco install typescript-vs2017 -version 2.5.0.1-RC`

## Do You want to update typescript version?
1. clone repository
2. replace url in `chocolateyinstall.ps1` with a new one
3. generate new checksum with `CertUtil -hashfile "path to new exe" sha256`
4. update version of a package in `.nuspec` file
5. run `cpack`

