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
    $terminalWidth = $Host.UI.RawUI.WindowSize.Width

    $c1 = "╭──"
    $logo = " PowerShell "
    $c2 = "["
    $path = Get-Location
    $spacing = ""
    $mid = ""
    $c3 = "]"
    $c4 = "`n╰───$"

    # Corrected this line to compute combinedLength correctly
    $combinedLength = $c1.Length + $logo.Length + $c2.Length + $path.Length + $c3.Length

    if ($combinedLength -gt $terminalWidth) {
        # Adjust the path to fit in the terminal width
        $excessLength = $combinedLength - $terminalWidth
        $mid = ($c1 + $logo + $c2 + $path).Substring($terminalWidth - 1)
        $path = $path.Substring(0, $path.Length - $excessLength)
        $spacing = "`n│" + " " * ($logo.Length + $c2.Length + 2)
    }

    # Use Write-Host to print each part with specific colors
    Write-Host $c1 -ForegroundColor Blue -NoNewline
    Write-Host $logo -ForegroundColor Blue -NoNewline
    Write-Host $c2 -ForegroundColor Blue -NoNewline
    Write-Host $path -ForegroundColor Green -NoNewline
    if ($mid) {
        Write-Host $spacing -ForegroundColor Blue -NoNewline
        Write-Host $mid -ForegroundColor Blue -NoNewline
    }
    Write-Host $c3 -ForegroundColor Blue -NoNewline
    Write-Host $c4 -ForegroundColor Blue -NoNewline

    return " "
}



#### Kali Theme ####

# function prompt {
#     $path = Get-Location
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
