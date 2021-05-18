configuration ExampleHost
{
    Import-DscResource -ModuleName WvdDsc

    Node 'localhost'
    {
        AddSessionHost Register {
            HostPoolName          = "example-hp"
            RegistrationInfoToken = "<token>"
        }
    }
}
