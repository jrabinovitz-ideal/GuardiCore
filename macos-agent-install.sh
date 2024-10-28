export SSL_ADDRESSES="10.16.101.228"
export SSL_PORT="443"
export UI_UM_PASSWORD='8ogNpLeD'
export GC_PROFILE='default'
 
curl -k -o /tmp/guardicore_cas_chain_file.pem https://$SSL_ADDRESSES:$SSL_PORT/guardicore-cas-chain-file.pem;
 
curl -k --cacert /tmp/guardicore_cas_chain_file.pem -o /tmp/gc-guest-agent-macos-x86_64.pkg https://$SSL_ADDRESSES:$SSL_PORT/gc-guest-agent-macos-x86_64.pkg;
 
installer -allowUntrusted -pkg /tmp/gc-guest-agent-macos-x86_64.pkg -target /;
gc-agent stop;
/usr/local/guardicore/usr/bin/gc-config -s SSL_ADDRESSES=10.16.101.228:443;
/usr/local/guardicore/usr/bin/gc-agent enroll-certificate
gc-agent start;
 
gc-config --set GC_PROFILE=default;
 
gc-agent restart;

