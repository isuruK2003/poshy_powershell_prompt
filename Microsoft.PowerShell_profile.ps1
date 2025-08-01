function prompt {
    $hostUI = $Host.UI.RawUI
    $terminalWidth = $hostUI.WindowSize.Width

    $prefix = "╭──"
    $logo = " PowerShell "
    $suffixStart = "["
    $suffixEnd = "]"
    $bottomLine = "`n╰───$"

    $path = (Get-Location).Path
    $fixedLength = $prefix.Length + $logo.Length + $suffixStart.Length + $suffixEnd.Length

    # Get Git branch name (if in Git repo)
    $gitBranch = ""
    try {
        $gitStatus = git -C $path rev-parse --abbrev-ref HEAD 2>$null
        if ($LASTEXITCODE -eq 0) {
            $gitBranch = " ($gitStatus)"
            $fixedLength += $gitBranch.Length
        }
    } catch {
        # Not in a git repo or git not installed
    }

    $availablePathLength = $terminalWidth - $fixedLength

    if ($path.Length -gt $availablePathLength) {
        if ($availablePathLength -gt 3) {
            $shortPath = "..." + $path.Substring($path.Length - ($availablePathLength - 3))
        } else {
            $shortPath = "..."
        }
    } else {
        $shortPath = $path
    }

    # Prompt line
    Write-Host "$prefix$logo$suffixStart" -ForegroundColor Blue -NoNewline
    Write-Host $shortPath -ForegroundColor Green -NoNewline
    Write-Host $suffixEnd -ForegroundColor Blue -NoNewline

    if ($gitBranch) {
        Write-Host $gitBranch -ForegroundColor Yellow -NoNewline
    }

    Write-Host $bottomLine -ForegroundColor Blue -NoNewline

    return " "
}
