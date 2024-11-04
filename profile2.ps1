function prompt {
    $path = Split-Path -Path (Get-Location)
    Write-Host "┌─" -ForegroundColor DarkBlue -NoNewline
    Write-Host " PowerShell " -BackgroundColor DarkBlue -ForegroundColor Black -NoNewline
    Write-Host " $path " -BackgroundColor Blue -ForegroundColor Black -NoNewline
    Write-Host "`n└─$" -ForegroundColor DarkBlue -NoNewline
    return " "
}
