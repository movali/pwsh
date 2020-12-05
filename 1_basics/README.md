

# ALIASE
Durch sogenannte Aliase kann die Eingabe von Commandlets verkürzt werden. So ist ps als Alias für Get-Process oder help für Get-Help vordefiniert. Statt Get-Process i* kann also
auch geschrieben werden: ps i*.
HINWEIS: Manche PowerShell-Experten betrachten den Einsatz von Aliasen als schlechten Stil, der die Lesbarkeit von PowerShell-Skripten erschwert.
Auf der anderen Seite ersparen Aliase eben Tipparbeit. Ob man vordefinierte und ggf. auch selbst definierte PowerShell-Aliase erlauben möchte, sollte
man im Unternehmen als Richtlinie festlegen. Ich halte Alias insbesondere dann für kein Problem, wenn man die von Microsoft vordefinierten Aliase
verwenden. Auch lokal innerhalb einer Skriptdatei selbstdefinierte Aliase sollten erlaubt sein, denn sie haben den Stellenwert von selbstdefinierten
Funktionen, die sicherlich auch erlaubt sein müssen. Problematisch finde ich hingegen selbstdefinierte globale Aliase, denn diese setzen voraus, dass
die Aliase auf jedem System, auf dem ein Skript ausgeführt werden soll, auch wirklich definiert sind und alle Administratoren, die die Skripte lesen

Get-Alias pgs

Möchte man zu einem Commandlet alle Aliase wissen, muss man allerdings schreiben:
Get-Alias | Where-Object { $_.definition -eq “Get-Process” }

Alias | Commandlet
------ | ------
% | ForEach-Object
? | Where-Object
ac | Add-Content
asnp | Add-PSSnapIn
cat | Get-Content
cd | Set-Location
chdir | Set-Location
clc | Clear-Content
clear | Clear-Host
clhy | Clear-History
cli | Clear-Item
clp | Clear-ItemProperty
cls | Clear-Host
clv | Clear-Variable
cnsn | Connect-PSSession
compare | Compare-Object
copy | Copy-Item
cp | Copy-Item
cpi | Copy-Item
cpp | Copy-ItemProperty
cvpa | Convert-Path
dbp | Disable-PSBreakpoint
del | Remove-Item
diff | Compare-Object
dir | Get-ChildItem
dnsn | Disconnect-PSSession
ebp | Enable-PSBreakpoint
echo | Write-Output
epal | Export-Alias
epcsv | Export-CSV
epsn | Export-PSSession
erase | Remove-Item
etsn | Enter-PSSession
exsn | Exit-PSSession
fc | Format-Custom
fl | Format-List
foreach | ForEach-Object
ft | Format-Table
fw | Format-Wide
gal | Get-Alias
gbp | Get-PSBreakpoint
gc | Get-Content
gci | Get-ChildItem
gcm | Get-Command
gcs | Get-PSCallStack
gdr | Get-PSDrive
ghy | Get-History
gi | Get-Item
gjb | Get-Job
gl | Get-Location
gm | Get-Member
gmo | Get-Module
gp | Get-ItemProperty
gps | Get-Process
group | Group-Object
gsn | Get-PSSession
gsnp | Get-PSSnapIn
gsv | Get-Service
gu | Get-Unique
gv | Get-Variable
gwmi | Get-WmiObject
h | Get-History
history | Get-History
icm | Invoke-Command
iex | Invoke-Expression
ihy | Invoke-History
ii | Invoke-Item
ipal | Import-Alias
ipcsv | Import-CSV
ipmo | Import-Module
ipsn | Import-PSSession
irm | Invoke-RestMethod
ise | powershell_ise.exe
iwmi | Invoke-WMIMethod
iwr | Invoke-WebRequest
kill | Stop-Process
lp | Out-Printer
ls | Get-ChildItem
man | help
md | mkdir
measure | Measure-Object
mi | Move-Item
mount | New-PSDrive
move | Move-Item
mp | Move-ItemProperty
mv | Move-Item
nal | New-Alias
ndr | New-PSDrive
ni | New-Item
nmo | New-Module
npssc | New-PSSessionConfigurationFile
nsn | New-PSSession
nv | New-Variable
ogv | Out-GridView
oh | Out-Host
popd | Pop-Location
ps | Get-Process
pushd | Push-Location
pwd | Get-Location
r | Invoke-History
rbp | Remove-PSBreakpoint
rcjb | Receive-Job
rcsn | Receive-PSSession
rd | Remove-Item
rdr | Remove-PSDrive
ren | Rename-Item
ri | Remove-Item
rjb | Remove-Job
rm | Remove-Item
rmdir | Remove-Item
rmo | Remove-Module
rni | Rename-Item
rnp | Rename-ItemProperty
rp | Remove-ItemProperty
rsn | Remove-PSSession
rsnp | Remove-PSSnapin
rujb | Resume-Job
rv | Remove-Variable
rvpa | Resolve-Path
rwmi | Remove-WMIObject
sajb | Start-Job
sal | Set-Alias
saps | Start-Process
sasv | Start-Service
sbp | Set-PSBreakpoint
sc | Set-Content
select | Select-Object
set | Set-Variable
shcm | Show-Command
si | Set-Item
sl | Set-Location
sleep | Start-Sleep
sls | Select-String
sort | Sort-Object
sp | Set-ItemProperty
spjb | Stop-Job
spps | Stop-Process
spsv | Stop-Service
start | Start-Process
sujb | Suspend-Job
sv | Set-Variable
swmi | Set-WMIInstance
tee | Tee-Object
trcm | Trace-Command
type | Get-Content
where | Where-Object
wjb | Wait-Job
write | Write-Output

## Neue Aliase anlegen
Einen neuen Alias definiert der Nutzer mit Set-Alias oder New-Alias, z. B.:
Set-Alias procs Get-Process
Set-Alias np notepad.exe
New-Alias procs Get-Process
Der Unterschied zwischen Set-Alias und New-Alias ist marginal: New-Alias erstellt einen
neuen Alias und liefert einen Fehler, wenn der zu vergebende Alias schon existiert. SetAlias erstellt einen neuen Alias oder überschreibt einen Alias, wenn der zu vergebende
Alias schon existiert. Mit dem Parameter  –description kann man jeweils auch einen
Beschreibungstext setzen.

## Aliase entfernen
Aliase entfernen aus der aktuellen PowerShell kann man mit Remove-Item alias:\Alias
Name, also z. B.

## $_,  % und ? Aliase

* $_
** Wie eine lambda Audruck bzw. Anonyme Funtkion x in x => Console.WriteLine(x)
**  Aktuelle Varibale in der PIPE
* ?
** Where
* % 
** Foreach-object

# Das erste Skript firstep.ps1
* Variable
* Escapezeichen `= \
* Interaktion

# Bedingungen Wenn Dann
## Operatoren
Vergleich unter Ignorierung der Groß-/Kleinschreibung | Vergleich unter Berücksichtigung der Groß-/Kleinschreibung | Bedeutung
------ | ------ | ------
-lt / -ilt | -clt | Kleiner
-le / -ile | -cle | Kleiner oder gleich
-gt / -igt | -cgt | Größer
-ge / -ige | -cge | Größer oder gleich
-eq / -ieq | -ceq | Gleich
-ne / -ine | -cne | Nicht gleich
-like / -ilike | -clike | Ähnlichkeit zwischen Zeichenketten, Einsatz von Platzhaltern (*und ?) möglich
-notlike / -inotlike | -cnotlike | Keine Ähnlichkeit zwischen Zeichenketten, Einsatz von Platzhaltern (* und ?) möglich
-match / -imatch | -cmatch | Vergleich mit regulärem Ausdruck
-notmatch / -inotmatch | -cnotmatch | Stimmt nicht mit regulärem Ausdruck überein
-is | | Typvergleich, z. B. (Get-Date) -is [DateTime]
-in -contains | | Ist enthalten in Menge
-notin -notcontains | | Ist nicht enthalten in Menge


Logischer Operator | Bedeutung
------ | ------ 
-not oder ! | Nicht
-and | Und
-or | Oder



## Vereinfachte Schreibweise von Bedingungen seit PowerShell 3.0
Get-Service | where-object { $_.status -eq “running” }
Get-Service | where-object status -eq “running”.
Get-Service | where-object -eq status “running” 
Get-Service | where-object status “running” -eq 

## Where()-Methode seit PowerShell 4.0
In PowerShell hat Microsoft eine Optionen für das Filtern von Pipelines eingebaut, die sich
vor allem an fortgeschrittene PowerShell-Nutzer richtet bzw. an Softwareentwickler, die die
PowerShell nutzen. Alternativ zum Commandlet Where-Object kann man nun auch mit
einer Where()-Methode filtern. Anstelle von
Get-Service a* | where status -eq “stopped”
Get-Service a* | Where-Object { $_.status -eq “stopped” }
(Get-Service a*).Where({ $_.status -eq “stopped”})

## Mehrere Bedingungen verketten
(Get-Service).Where({ ($_.name.startswith(“a”) -or $_.name.startswith(“A”)) -and $_.
status -eq “stopped”})

Soweit bietet die Methode 

## Where Parameter: Default, First, Last, SkipUntil, Until, Split
Interessant sind die weiteren Optionen. Man kann bei der Where()-Methode einen weiteren
Parameter angeben: Default, First, Last, SkipUntil, Until, Split. Dieser Parameter muss als
Zeichenkette übergeben werden.
# Alle, bis Bedingung erfüllt
(1..10).Where({ $_ -eq 5},'Until')
# Nur das erste Objekt, das Bedingung erfüllt, also 6
(1..10).Where({ $_ -gt 5},'First')
# Nur das letzte Objekt, das Bedingung erfüllt, also 10
(1..10).Where({ $_ -gt 5},'Last')

Sehr spannend ist die Möglichkeit, eine Menge mit Where() im Modus „Split“ in zwei Teilmengen zu teilen und als Ergebnis des Befehls direkt zwei Ausgabevariablen zu erhalten:

 ## Teile eine Menge von Zahlen in zwei Teile
 # erst mir pwsh 7.0
$kleiner,$groesser = (Get-Random -max 49 -Count 7).Where({ $_ -lt 30},’Split’)
"# Zahlen < 5"
$kleiner
"# Zahlen >= 5"
$groesser


# SORT

Get-Process | Sort-Object workingset64 -desc

Get-Service | Sort-Object Status, Displayname 

Auch Listen elementarer Datentypen lassen sich sortieren. Hier muss man keine Eigenschaft angeben, nach der man sortieren will:
21, 32, 16, 34, 9, 10 | Sort-Objec

Möchte man diese Zahlen nicht numerisch, sondern alphabetisch sortieren, dann gibt man
als Parameter einen Ausdruck an, der eine Typkonvertierung mit einem Typbezeichner
(Details zu Typkonvertierungen erfahren Sie im Kapitel 7 „PowerShell-Skriptsprache“) enthält:
21, 32, 16, 34, 9, 10 | Sort-Object { [string]$_ } 

#Duplikate entfernen
1,5,7,8,5,7 | Select-Object -Unique

#ACHTUNG: Bei Get-Unique muss die Liste vorher sortiert sein!
1,5,7,8,5,7 | Sort-Object | Get-Unique


# Ausdrücke
10* (8 + 6)
"Hello "+ " " + "World"
Write-Output (10* (8 + 6))

Ausdruck | Bedeutung
------ | ------ 
2+3 | Ein Ausdruck – die PowerShell führt die Berechnung aus und liefert 5.
echo 2+3 | Ein reiner Befehl. „2+3“ wird als Zeichenkette angesehen und ohne Auswertung auf dem Bildschirm ausgegeben.
echo (2+3) | Ein Befehl mit integriertem Ausdruck. Auf dem Bildschirm erscheint 5.
2+3 \| echo | Eine Pipeline, die mit einem Ausdruck beginnt. Auf dem Bildschirm erscheint 5.
echo 2+3 \| 7+6 | Eine unerlaubte Eingabe. Ausdrücke dürfen in der Pipeline nur als erstes Element auftauchen.
$a = Get-Process | Ein Ausdruck mit integriertem Befehl. Das Ergebnis wird einer Variablen zugewiesen.
$a \| Get-Process | Eine Pipeline, die mit einem Ausdruck beginnt. Der Inhalt von $a wird als Parameter an Get-Process übergeben.
Get-Process \| $a | Eine unerlaubte Eingabe. Ausdrücke dürfen in der Pipeline nur als erstes Element auftauchen.
„Anzahl der laufenden Prozesse:
(GetProcess).Count“ | Es ist wohl nicht das, was gewünscht ist, denn die Ausgabe ist: Anzahl der laufenden Prozesse: (Get-Process).Count
„Anzahl der laufenden Prozesse: $((GetProcess).Count)“ | Jetzt ist die Ausgabe „Anzahl der laufenden Prozesse: 95“, weil $( ... ) einen Unterausdruck (Subexpression) einleitet und dafür sorgt, dass Get-Process ausgeführt wird.



# Schleifen
 * KOPF while DO: Daten  unbekannter länge
 * Fuss DO WHILE
 * for Schleifen: Arrays, Aufzählung
 * foreach 
