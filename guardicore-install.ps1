$Web = New-Object System.Net.WebClient
$uri = "https://raw.githubusercontent.com/jrabinovitz-ideal/GuardiCore/refs/heads/main/windows_installer.exe"
$out = "C:\Temp\GC\windows_installer.exe"
$Web.DownloadFile($uri,$out)

$aggr_ip = "34.41.133.250"
$agent_pw = "XhakeIrC"

$quiet_install = "C:\Windows\System32\cmd.exe /c C:\Temp\GC\windows_installer.exe /a $aggr_ip /p $agent_pw /q"
