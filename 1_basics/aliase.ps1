
#ps | Get-Process
ps
# Alias start notepad
Set-Alias np notepad.exe
np
# Remove Alias np
Remove-Item alias:\np

# $_ Anoyme Funktion oder Aaktuelle Variable in der Pipe
1,2,3 | ForEach-Object {Write-Host $_}
1,2,3 | % {Write-Host $_}

1,2,3 | Where-Object {$_ -gt 1}
1,2,3 | ? {$_ -gt 1}

