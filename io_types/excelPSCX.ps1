Find-Module importexcel
Get-Command -Module ImportExcel
help export-excel
help export-excel -examples

##-- 
Get-Service| Export-Excel -Now
Get-Service| Export-Excel inFileExcel.xlsx
Get-Service| Export-Excel inFileExcel.xlsx -Show
Get-Service| Export-Excel inFileExcel.xlsx -Show -AutoSize -AutoFilter

help Import-Excel
help Import-Excel -examples
Import-Excel -Path 'io_Types/db/users.xlsx' -WorkSheetname Tabelle1
Import-Excel -Path 'io_Types/db/users.xlsx' -WorkSheetname Tabelle1 -NoHeader
Import-Excel -Path 'io_Types/db/users.xlsx' -WorkSheetname Tabelle1 -NoHeader -StartRow 2
Import-Excel -Path 'io_Types/db/users.xlsx' -WorkSheetname Tabelle1 -HeaderName 'code','Vorname','nachname','ort' -StartRow 2


$users = Import-Excel -Path 'io_Types/db/users.xlsx' -WorkSheetname Tabelle1


foreach($user in $users){

    Write-Host -Object ([System.convert]::ToString($user.id) + " " + $user.username +" "+ $user.password+" "+ $user.ort);

}




