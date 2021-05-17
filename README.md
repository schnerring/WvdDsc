# WvdDsc

A thin wrapper around Windows Virtual Desktop (WVD) session host registration functionality to enable composition with other Desired State Configuration (DSC) resources.

## Motivation

To add a session host to a WVD host pool, a [Virtual Machine extension](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/features-windows) has to be configured for the host. Namely, a [PowerShell DSC Extension](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-windows) which registers the host to the pool. Only one PowerShell DSC extension is allowed per VM, so combining host pool registration with other DSC resources is currently not possible.

## Implementation

[wvd-templates/DSC/Script-RegisterSessionHost.ps1](https://github.com/Azure/RDS-Templates/blob/master/wvd-templates/DSC/Script-RegisterSessionHost.ps1) from [Azure/RDS-Templates](https://github.com/Azure/RDS-Templates) contains the original functionality and imported as submodule.

The required source files are added as symbolic links and kept as is. The only exception is `Script-RegisterSessionHost.ps1` which is copied and generalized by commenting any node-specific configuration.

## Local Development

If using Git for Windows, [symlink emulation has to be enabled](https://github.com/git-for-windows/git/wiki/Symbolic-Links).

To clone the repository, run:

```shell
git clone -c core.symlinks=true https://github.com/schnerring/WvdDsc.git
```
