# WvdDsc

This module wraps the functionality of [wvd-templates/DSC/Script-RegisterSessionHost.ps1](https://github.com/Azure/RDS-Templates/blob/master/wvd-templates/DSC/Script-RegisterSessionHost.ps1) which is part of the [Azure/RDS-Templates](https://github.com/Azure/RDS-Templates) repository.

## Motivation

To add a session host to a Windows Virtual Desktop (WVD) host pool, a [Virtual Machine extension](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/features-windows) has to be configured for the host. Namely, a [PowerShell Desired State Configuration (DSC) Extension](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-windows) that registers the host to the pool. Only one PowerShell DSC extension is allowed per VM, so combining host pool registration with other DSC configurations is currently not possible.
