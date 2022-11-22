# Get functions
$Functions = @( Get-ChildItem -Path $PSScriptRoot\*.ps1 -Recurse -ErrorAction SilentlyContinue )


foreach($import in @($Functions )){
    try {
        . $import.FullName
        $import
    }
    catch {
        Write-Error -Message "Failed to import function $($import.FullName): $_"
    }
}

# Aliases
New-Alias -Name 'winner' -Value "Get-LatestLeagueWinner"
New-Alias -Name 'game' -Value "Get-LatestGameResult"

# Export everything in the directory
Export-ModuleMember -Function @("Get-LatestGameResult","Get-LatestLeagueWinner") -Cmdlet * -Alias *