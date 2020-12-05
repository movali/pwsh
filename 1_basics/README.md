
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
