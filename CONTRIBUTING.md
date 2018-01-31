## Do You want to update typescript version?
1. clone repository
2. replace url in `chocolateyinstall.ps1` with a new one
3. generate new checksum with `CertUtil -hashfile "path to new exe" sha256`
4. update version of a package in `.nuspec` file
5. run `cpack`