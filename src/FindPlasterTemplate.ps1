function Find-PlasterTemplate {
    [CmdletBinding()]
    param()

    process {
        Write-Host "Install with `"Install-Module -Name <name>`"" -ForegroundColor Magenta

        Find-Module  -Tag plaster |
            Where-Object { $_.Tags -contains "template"  } |
            Select-Object -Property Name,Version,Description

    }
}
