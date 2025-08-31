#check if process running 

$process = Get-Process -Name "notepad" -ErrorAction SilentlyContinue

if ($process) {
	Stop-Process -Id $process.Id -Force
} else {
	Write-Output "not running"
}

