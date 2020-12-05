

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
