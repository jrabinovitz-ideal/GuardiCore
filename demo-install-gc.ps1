$aggr_agent = "https://172.234.199.246/windows_installer.exe"
$aggr = "172.234.199.246"
$agent_pw = "4Bt1pePy2ighfQ7lQkF9"
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }

function get-gcagent {
	$dl_agent = Invoke-WebRequest -Uri $aggr_agent -OutFile C:\Windows\Temp\windows_installer.exe
}

function upgrade-agent {
	$install_gc_agent = C:\Windows\System32\cmd.exe /c "C:\Windows\Temp\windows_installer.exe /a $aggr /p $agent_pw"

}


get-gcagent 
upgrade-agent

