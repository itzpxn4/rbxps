$cfgdir = "$home\.config\rbxps"

if (-not (test-path "$cfgdir\cfg.json"))
    {
    mkdir $cfgdir | Out-null
    new-item -path "$cfgdir\cfg.json" | Out-Null
    [PSCustomObject]@{items = @(@{ place = "Multicrew Tank Combat"; id = 95721658376580 })} | ConvertTo-Json | Set-Content -Path "$cfgdir\cfg.json" -Encoding utf8
    }

$cfg = Get-Content -Path "$cfgdir\cfg.json" -Raw | ConvertFrom-Json

while ($true) {
    Clear-Host
    Write-Host "=== Roblox PowerShell ===" -ForegroundColor Cyan
    Write-Host 
    for ($i = 0; $i -lt $cfg.items.Count; $i++) {
    Write-Host "$($i+1) $($cfg.items[$i].place)"
    }
    Write-Host "Q Exit"
    Write-Host 
    Write-Host ">" -NoNewline

    $choice = Read-Host

    if ($choice -ne "q") {
        if ($choice -match "^\d+$" -and [int]$choice -lt $cfg.items.Count+1) {
            Write-Host "Starting $($cfg.items[$choice-1].place)"
            Start-Process "roblox://placeId=$($cfg.items[$choice-1].id)"
            exit
            }
    }
    else {
        exit
        }
}
