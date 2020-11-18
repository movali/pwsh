#Kommentar
<#
 Blockommentar

#>


#Überprüfen , ob Skrippte ausgeführt werden können
Get-ExecutionPolicy


# Analog zu OOP mit Punktnotation auf Attribute zugreifen
Get-process
$proc=get-process
$proc.getType()
$proc[0]
$proc[0].GetType()


#Augabe von Text;
"Hello World"

write-Host -object "Hello World"
write-Host -object "Hello World" -ForegroundColor yellow
write-Host -object "Hello World" -ForegroundColor green -NoNewline

​# Variablen (in dieser session)
$zahl=4
$zahl
$zahl.getType()

$zanl=9
write-Host -object "$zahl hat den Wert 9" -ForegroundColor yellow -NoNewline
write-Host -object "`$zahl hat den Wert 9" -ForegroundColor red -NoNewline

#das Escapezeichen `= \
write-Host -object "`$zahl hat den Wert \n 9" -ForegroundColor yellow -NoNewline
write-Host -object "`$zahl hat den Wert `n 9" -ForegroundColor red -NoNewline


#Interaktion user 
$name = read-Host -Prompt "`n Namen eingegben"

#Lesbarkeit
write-host -object $name -ForegroundColor yellow -BackgroundColor Cyan
# was ist was ?
write-host $name yellow Cyan

# execution policy, evtl. funktioniert es admin ise 
$zahl1= read-host -Prompt "value 1"
$zahl2= read-host -Prompt "value 2"

#write-host -object ( $zahl1.ToInt64() + $zahl2.ToInt64()) -ForegroundColor yellow -BackgroundColor Cyan
#write-host -object ( [System.convert]::ToDouble($zahl1) + [System.convert]::ToDouble($zahl2) ) -ForegroundColor yellow -BackgroundColor Cyan
write-host -object ( [System.convert]::ToInt64($zahl1) + [System.convert]::ToInt64($zahl2) ) -ForegroundColor yellow -BackgroundColor Cyan

# Unsicher ohne fullname space
[double] $zahl1= read-host -Prompt "value 1"
# sauber full namespace
[System.double] $zahl2= read-host -Prompt "value 2"
write-host -object ($zahl1 + $zahl2) -ForegroundColor yellow -BackgroundColor Cyan
