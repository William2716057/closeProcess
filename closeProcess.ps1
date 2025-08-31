while ($true) {
    $process = Get-Process -Name "notepad" -ErrorAction SilentlyContinue
    if ($process) {
        Stop-Process -Id $process.Id -Force
        Write-Output "Notepad was running and has been stopped."
    }

    # needs to sleep for short time
    Start-Sleep -Seconds 1
}
