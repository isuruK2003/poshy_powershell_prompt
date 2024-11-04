function prompt {
    $path = Split-Path -Path (Get-Location)
    Write-Host "┌── " -ForegroundColor DarkBlue -NoNewline
    Write-Host "PowerShell" -ForegroundColor Blue -NoNewline
    Write-Host "@" -ForegroundColor DarkBlue -NoNewline
    Write-Host "$path" -ForegroundColor Green -NoNewline
    Write-Host "`n└─>" -ForegroundColor DarkBlue -NoNewline
    return " "
}
