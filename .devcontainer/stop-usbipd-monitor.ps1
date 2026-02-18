# Stops running usbipd monitor jobs that was started with `start-usbipd-monitor.ps1`

Stop-Job -Name "UsbipdAutoAttach-*"
