function Get-LatestGameResult {
    [CmdletBinding()]
    param (
        #[Parameter(Mandatory)],
        #[String]
        #$
    )

    Begin {
        # Variables
        $Result = PrivateDataResult

    }
    Process {
        Write-Output $Result
    }
    End {
        # End block!
    }
    Clean {
        $Result = $null
    }
}