function upgrade-gc {

$aggr_ip = "172.31.204.112:443,172.31.204.111:443"
$agent_pw = "p60yKmjO"
Start-Process -FilePath "C:\Program Files\GuardiCore\uninstall.exe" -ArgumentList "/purge /q"

Start-Process -FilePath "<NEED_TO_DEFINE>" -ArgumentList "/a $aggr_ip /p $agent_pw /q"

}

upgrade-gc
