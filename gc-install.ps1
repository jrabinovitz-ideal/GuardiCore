$pcs = import-csv C:\GC_Installation\pcs.txt

$aggpass = "YZgwILNM"

$aggip = "34.60.141.233"

$installcommand = "C:\Windows\system32\cmd.exe /c C:\Windows\Temp\windows_installer.exe /q /a $aggip /p $aggpass"

$pcs.Name | foreach {

if ((Test-Path "\\$_\c$\WINDOWS\Temp\")){

copy-item -force C:\GC_Installation\windows_installer.exe \\$_\c$\WINDOWS\Temp\

([WMICLASS]"\\$_\Root\CIMV2:Win32_Process").create($installcommand) | Out-Null

Write-Host "$_ installed successfully"

}

else {

Write-Host "$_ not available"

}

}
