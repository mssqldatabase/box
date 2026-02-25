# Remove Mark of the Web from .lnk files (no security warning on launch)
Get-ChildItem -Path $PSScriptRoot -Filter *.lnk -File | Unblock-File
Write-Host "Done. You can now run the .lnk without security warning." -ForegroundColor Green
