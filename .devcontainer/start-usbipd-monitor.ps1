# This script starts the usbipd auto-attach monitor process to watch for relevant USB devices. It only works 
# if the USB device is already present, otherwise the monitor process will exit immediately.
#
# The shell that called this script will need to persist for these jobs to keep running.
#
# Job name is used to identify the job for `stop-usbipd-monitor.ps1`.

# Not using `-a` option on usbipd because it doesn't handle the case that the USB port changes.
Start-Job -ScriptBlock { while($true) { usbipd bind -i 1366:1020; usbipd attach -w -i 1366:1020; Start-Sleep 1 } } -Name "UsbipdAutoAttach-JLink"
Start-Job -ScriptBlock { while($true) { usbipd bind -i 1366:0101; usbipd attach -w -i 1366:0101; Start-Sleep 1 } } -Name "UsbipdAutoAttach-JLinkOld"
Start-Job -ScriptBlock { while($true) { usbipd bind -i 1366:0105; usbipd attach -w -i 1366:0105; Start-Sleep 1 } } -Name "UsbipdAutoAttach-JLinkPlus2015"
Start-Job -ScriptBlock { while($true) { usbipd bind -i 1c5a:0432; usbipd attach -w -i 1c5a:0432; Start-Sleep 1 } } -Name "UsbipdAutoAttach-Waitara"
