$aggr = ""
$agent_pw = ""

function get-gcagent {
	$dl_agent = Invoke-WebRequest -Uri $aggr:443/windows_installer.exe -OutFile C:\Windows\Temp\windows_installer.exe
}

function upgrade-agent {
	$install_gc_agent = C:\Windows\System32\cmd.exe /c "C:\Windows\Temp\windows_installer.exe /a $aggr /p $agent_pw"

}


get-gcagent 
upgrade-agent

