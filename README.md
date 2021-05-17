# WvdDsc

A thin wrapper around Windows Virtual Desktop (WVD) session host registration functionality to enable composition with other Desired State Configuration (DSC) resources.

## Motivation

To add a session host to a WVD host pool, a [Virtual Machine extension](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/features-windows) has to be configured for the host. Namely, a [PowerShell DSC Extension](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-windows) which registers the host to the pool. Only one PowerShell DSC extension is allowed per VM, so combining host pool registration with other DSC resources is currently not possible.

## Implementation

[ARM-wvd-templates/DSC/Configuration.ps1](https://github.com/Azure/RDS-Templates/blob/master/ARM-wvd-templates/DSC/Configuration.ps1) from [Azure/RDS-Templates](https://github.com/Azure/RDS-Templates) contains the original functionality and is imported as submodule.

The required source files are added as symbolic links and kept as is. The only exception is `Configuration.ps1` which is copied as `AddSessionHost.schema.psm1` and generalized by commenting any node-specific configuration.

## Local Development

If using Git for Windows, [symlink emulation has to be enabled](https://github.com/git-for-windows/git/wiki/Symbolic-Links).

To clone the repository, run:

```shell
git clone -c core.symlinks=true https://github.com/schnerring/WvdDsc.git
```

### Adding a New Symbolic Link

In an elevated CMD, run:

```bat
mklink this-link-points-to c:\that-file
```

Or in an elevated PowerShell, run:

```powershell
New-Item -ItemType SymbolicLink -Path .\src\DSCResources\AddSessionHost\Configuration.zip -Value .\RDS-Templates\ARM-wvd-templates\DSC\Configuration.zip
```
