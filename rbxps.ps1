while ($true) {
    Clear-Host
    Write-Host "=== Roblox PowerShell ===" -ForegroundColor Cyan
    Write-Host 
    Write-Host "1 Phantom Forces"
    Write-Host "2 Scorched Earth"
    Write-Host "3 Multicrew Tank Combat"
    Write-Host 
    Write-Host "Q Exit"
    Write-Host

    $choice = Read-Host " "

    switch ($choice) {
        "1" {
            Start-Process "roblox://placeId=292439477"
            exit
        }
        "2" {
            Start-Process "roblox://placeId=13794093709"
            exit
        }
        "3" {
            Start-Process "roblox://placeId=95721658376580"
            exit
        }
        "Q" {
            exit
        }
        Default {
            Write-Host "Error, try 1-3 or Q" -ForegroundColor Red
            Start-Sleep -Seconds 1
        }
    }
}