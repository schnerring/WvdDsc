@{

    # Script module or binary module file associated with this manifest.
    RootModule           = 'WvdDsc'

    # Version number of this module.
    ModuleVersion        = '0.0.1'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID                 = '7dcf3f91-4821-413f-8185-b07f07b323a9'

    # Author of this module
    Author               = 'Michael Schnerring'

    # Company or vendor of this module
    CompanyName          = 'Michael Schnerring'

    # Copyright statement for this module
    Copyright            = 'Copyright (c) 2021 Michael Schnerring. All rights reserved.'

    # Description of the functionality provided by this module
    Description          = 'A thin wrapper around Windows Virtual Desktop (WVD) session host registration functionality to enable composition with other Desired State Configuration (DSC) resources.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion    = '4.0'

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    ClrVersion           = '4.0'

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport    = @()

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport      = @()

    # Variables to export from this module
    VariablesToExport    = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport      = @()

    # DSC resources to export from this module
    DscResourcesToExport = @('AddSessionHost')

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData          = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags       = @('DesiredStateConfiguration', 'DSC', 'DSCResource')

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/schnerring/WvdDsc/blob/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/schnerring/WvdDsc'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            # ReleaseNotes = ''

            # Prerelease string of this module
            # Prerelease = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable

}
