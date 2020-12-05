# Powershell 7.0
Die Windows PowerShell basiert auf dem klassischen .NET Framework, das es nur für Windows gibt. Die PowerShell Core 6.x und die PowerShell 7.0 basieren auf .NET Core, das für Windows, Linux und macOS verfügbar ist. Die PowerShell 7.0 verwendet die Version 3.1 von .NET Core, die am 3. 12. 2019 erschienen ist. .NET Core 3.1 muss NICHT vor der Installation der PowerShell 7.0 getrennt installiert werden, denn die PowerShell 7.0 ist eine sogenannte „Self-contained Application“ (SCA), die alle notwendigen Teile der .NET Core 3.1-Laufzeitumgebung mitbringt.

Die Windows PowerShell 5.1 war weit mächtiger als die PowerShell Core 6.x, weil die PowerShell Core einen Neustart des PowerShell-Entwicklungsprojekts im Hinblick auf Plattformunabhängigkeit darstellt. In PowerShell Core fehlten viele Commandlets und Funktionen der Grundausstattung der Windows PowerShell, und viele der verfügbaren PowerShell Erweiterungsmodule liefen nicht in der PowerShell Core. 

Die PowerShell 7.0 versteht sich als gemeinsamer Nachfolger von Windows PowerShell 5.2 und PowerShell Core 6.2. [https://github.com/PowerShell/PowerShell/pull/9513]. Mit 7.0 hat sich der Funktionsabstand zur Windows PowerShell deutlich reduziert, weil .NET Core, die Basis von PowerShell 6.x und 7.0, funktional stark aufgeholt hat. 
Analog wird das .NET-Entwicklungsteam .NET Framework und .NET Core Ende des Jahres 2020 zu .NET 5.0 vereinen.

Aber weiterhin gilt, dass einige Commandlets und Funktionen der Windows PowerShell sowie einige Erweiterungsmodule nicht verfügbar sind. Die Version 5.1 wird auch weiterhin eine große Bedeutung haben. Die PowerShell 7.0 wird bisher mit keinem einzigen Betriebssystem ausgeliefert, sondern muss getrennt heruntergeladen und installiert werden. Eine Zusatzinstallation ist in vielen Unternehmen mit stark abgeschotteten Systemen gar nicht möglich.

#

#Schnelleinstieg
PS - ,NET --> 4.8-WIN --PS 5 --- 3.1 ,.Core - Plattform --> PS 7

##Ähnlichkeit
* Lehnt sich an c# ist es aber nicht
* man kann nativen Code direkt einbinden / sollte man nicht
' Man kann eigene .NET ..DLL einbinden / gut für Entwickler, die Verstecken wollen schutz
## CMDLET
Ein „normaler“ PowerShell-Befehl heißt Commandlet (kurz: Cmdlet) oder Funktion (Function). Eine Funktion ist eine Möglichkeit, in der PowerShell selbst wieder einen Befehl zu
erstellen, der funktioniert wie ein Commandlet. Da die Unterscheidung zwischen Commandlets und Funktionen aus Nutzersicht zum Teil akademischer Art ist, erfolgt hier zunächst
keine Differenzierung: Das Kapitel spricht allgemein von Commandlets und meint damit auch Funktionen.
Ein Commandlet besteht typischerweise aus drei Teilen:
 einem Verb,
 einem Substantiv und
 einer (optionalen) Parameterliste.
Verb und Substantiv werden durch einen Bindestrich „–“ voneinander getrennt, die optionalen Parameter durch Leerzeichen. Daraus ergibt sich der folgende Aufbau:
Verb-Substantiv [-Parameterliste] Die Groß- und Kleinschreibung ist bei den Commandlet-Namen nicht relevant
* Funktionen, die sind gekapselt
* Dll, C usw.
* Meisten weiss man das nicht
* Syteme wie Shareppoint, IIS, Exchange, ADS und SQL bringen eigene CMDLETS mit
* REMOTE und Zielserver müssen die selben Versionen haben
	Beispiele: 
  Get-Process 
  Get-Service
  Get-ChildItem



##ALIAS
Durch sogenannte Aliase kann die Eingabe von Commandlets verkürzt werden. So ist ps als Alias für Get-Process oder help für Get-Help vordefiniert. Statt Get-Process i* kann also
auch geschrieben werden: ps i*.
HINWEIS: Manche PowerShell-Experten betrachten den Einsatz von Aliasen als schlechten Stil, der die Lesbarkeit von PowerShell-Skripten erschwert.
Auf der anderen Seite ersparen Aliase eben Tipparbeit. Ob man vordefinierte und ggf. auch selbst definierte PowerShell-Aliase erlauben möchte, sollte
man im Unternehmen als Richtlinie festlegen. Ich halte Alias insbesondere dann für kein Problem, wenn man die von Microsoft vordefinierten Aliase
verwenden. Auch lokal innerhalb einer Skriptdatei selbstdefinierte Aliase sollten erlaubt sein, denn sie haben den Stellenwert von selbstdefinierten
Funktionen, die sicherlich auch erlaubt sein müssen. Problematisch finde ich hingegen selbstdefinierte globale Aliase, denn diese setzen voraus, dass
die Aliase auf jedem System, auf dem ein Skript ausgeführt werden soll, auch wirklich definiert sind und alle Administratoren, die die Skripte lesen
und bearbeiten können sollen, diese Aliase auch kennen.

*DOS und Bash Befehle als Aliase zur Verfügung gestellt.
* Get-Alias dir
* Get-Alias ls
* Alias dürfen auf Console genutzt jedoch nicht im Script genutzt werden, Lesbarkeit und 
* Man selbst Aliase setzen sowie bestehende überschreiben, sollte man aber nicht 
* Set-alias -Name edit -value notepad
			§ In der Session Gültig

Typesichereit
	• "Hans"+"Meier" = HansMeier
	• "4"+"1" = 41
	• Links nach rechts
		○ "4"+1 =41
		○ 4+"1" = 5
Variablen (in dieser session)
	• $zahl=4
	• $zahl
$zahl.getType()

