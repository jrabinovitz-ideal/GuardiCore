$aggr_agent = "https://aggr-customer-38001836-cloud.cloud.guardicore.com/windows_installer.exe"
$aggr = "172.234.199.246"
$agent_pw = "4Bt1pePy2ighfQ7lQkF9"

function get-gcagent {
	$dl_agent = Invoke-WebRequest -Uri $aggr_agent -OutFile C:\Windows\Temp\windows_installer.exe
}

function upgrade-agent {
	$install_gc_agent = C:\Windows\System32\cmd.exe /c "C:\Windows\Temp\windows_installer.exe /a $aggr /p $agent_pw"

}


get-gcagent 
upgrade-agent

