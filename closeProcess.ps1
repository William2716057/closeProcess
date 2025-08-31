while ($true) {
	#change notepad to desired program
    $process = Get-Process -Name "notepad" -ErrorAction SilentlyContinue
    if ($process) {
        Stop-Process -Id $process.Id -Force
    }

    # needs to sleep for short time
    Start-Sleep -Seconds 1
}
