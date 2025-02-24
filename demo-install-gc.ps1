$aggr_agent = "https://aggr-customer-38001836-cloud.cloud.guardicore.com/windows_installer.exe"
$aggr = "172.234.199.246"
$output_agent = "C:\Windows\Temp\windows_installer.exe"
$agent_pw = "4Bt1pePy2ighfQ7lQkF9"

##isntall
function get-gcagent {
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
Invoke-WebRequest -UseBasicParsing -Uri "https://aggr-customer-38001836-cloud.cloud.guardicore.com/windows_installer.exe" `
-WebSession $session -OutFile $output_agent
}

function upgrade-agent {
	$install_gc_agent = C:\Windows\System32\cmd.exe /c "C:\Windows\Temp\windows_installer.exe /a $aggr /p $agent_pw"

}


get-gcagent 
upgrade-agent

