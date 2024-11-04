#### My Default ####

# function prompt {
#     $path = Split-Path -Path (Get-Location)
#     Write-Host "┌─ " -ForegroundColor DarkBlue -NoNewline
#     Write-Host "PowerShell" -ForegroundColor Blue -NoNewline
#     # Write-Host "@" -ForegroundColor DarkBlue -NoNewline
#     Write-Host " [$path]" -ForegroundColor Green -NoNewline
#     Write-Host "`n└─$" -ForegroundColor DarkBlue -NoNewline
#     return " "
# }

#### My Default - No Color ####

function prompt {
    $path = Split-Path -Path (Get-Location)
    "┌─ PowerShell [$path]`n└─$"
    return " "
}

#### Kali Theme ####

# function prompt {
#     $path = Split-Path -Path (Get-Location)
#     Write-Host "┌─ " -ForegroundColor DarkBlue -NoNewline
#     Write-Host "PowerShell" -ForegroundColor Blue -NoNewline
#     Write-Host " [$path]" -ForegroundColor Green -NoNewline
#     Write-Host "`n└─$" -ForegroundColor DarkBlue -NoNewline
#     return " "
# }

#### With Backgrounnd Color Applied ####

# function prompt {
#     $path = Split-Path -Path (Get-Location)
#     Write-Host "┌─" -ForegroundColor DarkBlue -NoNewline
#     Write-Host " PowerShell " -BackgroundColor DarkBlue -ForegroundColor Black -NoNewline
#     Write-Host " $path " -BackgroundColor Blue -ForegroundColor Black -NoNewline
#     Write-Host "`n└─$" -ForegroundColor DarkBlue -NoNewline
#     return " "
# }
