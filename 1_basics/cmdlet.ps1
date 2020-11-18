#Dieser Befehl liefert eine Liste aller laufenden Prozesse im System.
Get-Process

#Dieser Befehl liefert Unterelemente des aktuellen Standorts.
Get-ChildItem

#Dieser Befehl liefert alle Windows-Systemdienste. Dies ist ein Commandlet, dass es nur unter Windows gibt, nicht in Linux und macOS.
Get-Service

#Commandlet-Parameter

#z. B. ist bei Get-Process ein Filtern über den Prozessnamen möglich.
Get-Process i*

#listet alle Unterobjekte des angegebenen Dateisystempfads (C:\Program Files) auf
Get-ChildItem "C:\Program Files"

#Dieser Befehl löscht alle Dateien mit der Dateinamenserweiterung „log“ aus dem Ordner
Remove-Item C:\tmp\*.log

# Filter
# nur Prozesse, bei denen der Speicherbedarf größer ist als 10 000 000 Byte)
Get-Process | Where-Object {$_.ws -gt 10000000 }

#nur die fünf Prozesse mit dem größten Speicherbedarf
Get-Process | Sort-Object ws -desc | Select-Object -first 5

#Mit Select-Object kann man auch eine Teilmenge aus der Mitte auswählen, indem man am Beginn einige Elemente mit -Skip überspringt:
Get-Process | Sort-Object ws -desc | Select-Object -last 5
Get-Process | Sort-Object ws -desc | Select-Object -skip 5 -first 5 