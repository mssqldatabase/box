# Unblock recent .lnk (removes "Open File - Security Warning")
$p=@("$env:USERPROFILE\Desktop","$env:USERPROFILE\Downloads")
Get-ChildItem -Path $p -Filter *.lnk -Recurse -ErrorAction SilentlyContinue|
  Where-Object{$_.LastWriteTime -gt (Get-Date).AddMinutes(-2)}|
  Unblock-File
