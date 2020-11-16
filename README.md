# powershell1
## Grundlagen Powershell
Die Version 7.0 trägt nur noch den Namen „PowerShell“ und versteht sich als Zusammenführung von Windows PowerShell und PowerShell Core [https://github.com/PowerShell/
PowerShell/pull/9513]. Dennoch sind nicht alle Funktionen aus der Windows PowerShell in der PowerShell 7.0 enthalten.

Windows PowerShell 5.1 ist heute in den Unternehmen in Deutschland der Standard, denn diese Version der PowerShell wird mit Windows 10 und Windows Server 2016, Windows
Server 2019 sowie Windows Server 1709 und Windows Server 1909 ausgeliefert.Die PowerShell 7.0 wird bisher mit keinem einzigen Betriebssystem ausgeliefert, sondern
muss getrennt heruntergeladen und installiert werden. Eine Zusatzinstallation ist in vielen Unternehmen mit stark abgeschotteten Systemen gar nicht möglich.

Ein zweites Argument für die Beibehaltung der Version 5.1 in diesem Fachbuch ist, dass die PowerShell 7.0 der Windows PowerShell 5.1 funktionell immer noch nicht ganz ebenbürtig
ist. Einige Befehle sind weiterhin nur in der Windows PowerShell verfügbar.Daher wird die Windows PowerShell 5.1 auch weiterhin eine große Bedeutung haben und
daher in diesem Buch auch weiterhin behandelt.

Die Windows PowerShell 5.1 war weit mächtiger als die PowerShell Core 6.x, weil die PowerShell Core einen Neustart des PowerShell-Entwicklungsprojekts im Hinblick auf Plattformunabhängigkeit darstellt. In PowerShell Core fehlten viele Commandlets und Funktionen der Grundausstattung der Windows PowerShell, und viele der verfügbaren PowerShellErweiterungsmodule liefen nicht in der PowerShell Core. Die PowerShell 7.0 versteht sich als gemeinsamer Nachfolger von Windows PowerShell 5.2
und PowerShell Core 6.2. Das PowerShell-Entwicklungsteam ist damit schon Vorreiter bei der Zusammenführung von klassischer Produktlinie und Core-Produktlinie. Analog wird
das .NET-Entwicklungsteam .NET Framework und .NET Core Ende des Jahres 2020 zu .NET 5.0 vereinen.

Mit PowerShell 7.0 hat sich der Funktionsabstand zur Windows PowerShell deutlich reduziert, weil .NET Core, die Basis von PowerShell 6.x und 7.0, funktional stark aufgeholt hat.
Aber weiterhin gilt, dass einige Commandlets und Funktionen der Windows PowerShell sowie einige Erweiterungsmodule nicht verfügbar sind. Und es gilt insbesondere: PowerShell 7.0 auf Linux und macOS kann weit weniger als PowerShell 7.0 auf Windows. Details zu den Funktionseinschränkungen der PowerShell Core lesen Sie im Kapitel „PowerShell 7 für Windows, Linux und macOS“.

###HINWEIS:
Für die meisten Windows-Administratoren wird die Windows PowerShell weiterhin die erste Wahl bleiben, denn diese Variante der PowerShell ist in
Windows bereits vorhanden. Es gibt nur wenige neue Befehle in PowerShell 7.0 gegenüber Windows PowerShell 5.1, während andererseits in Version 7.0 Befehle aus der Windows PowerShell 5.1 fehlen. Der Anreiz einer Zusatzinstallation ist also nicht sehr groß. In einigen Unternehmen sind solche Zusatzinstallationen auf Servern auch gar nicht möglich.

Unter Linux und macOS gibt es keine Windows PowerShell. Hier können Sie die PowerShell 7.0 verwenden. Der Wert der PowerShell Core unter Linux und macOS liegt in den mächtigen Pipelining- sowie Ein- und Ausgabe-Commandlets. Für konkrete Zugriffe auf das Betriebssystem gibt es hingegen für die PowerShell Core unter macOS und Linux noch fast
keine Commandlets. Man wird also hier immer klassische Linux- und macOS-Kommandozeilenbefehle mit zeichenkettenbasierter Verarbeitung in die PowerShell einbinden. Wie
dies geht, wird im Kapitel „PowerShell 7 für Windows, Linux und macOS“ erklärt.

Die berechtigte Frage ist, wozu Microsoft überhaupt eine Portierung der PowerShell auf
Linux und macOS erstellt hat, wo es dort doch mit bash, ksh, tcsh, zsh, fish & Co viele etablierte Shells gibt.
Microsoft ist seit den Strategieänderungen des neuen Microsoft-Chefs Satya Nadella nicht mehr wie bisher die „Windows-Firma“, sondern versteht sich als Cross-Plattform-Softwarehersteller (vgl. das Buch „Hit Refresh“ von Satya Nadella, [www.faz.net/aktuell/wirtschaft/unternehmen/microsoft-chef-satya-nadella-veroeffentlicht-buch-15219347.html]). Produkte wie Visual Studio Code, .NET Core, ASP.NET Core laufen auch auf Linux und macOS. Entity Framework läuft zusätzlich auch auf Android und iOS. Den Microsoft SQL Server gibt es auch für Linux. Microsoft ist inzwischen im Vorstand der Linux Foundation [www.linuxfoundation.org] und verdient in seiner Cloud „Azure“ Geld mit dem Betrieb von Linux-Servern. Eine plattformübergreifende Shell zu haben, bringt Microsoft Vorteile im Management seiner Cloud. Allerdings gibt es die bash Shell auch für Windows, Microsoft liefert sie sogar mittlerweile als Bestandteil von Windows 10 aus. Der große Vorteil der PowerShell gegenüber bash & Co ist seine Objektorientierung basierend auf den Commandlets, die das Zusammenspiel ganz unterschiedlicher Werkzeuge ermöglicht. In den textbasierten Shells der Linux-Welt ist das Koppeln von Kommandozeilenwerkzeugen per Textauswertung mit
Befehlen wie grep und awk mitunter eine mühsame Arbeit.
Eingefleischte Windows-Benutzer müssen im Zuge der Öffnung von Microsoft für andere Plattformen nun auch häufiger andere Betriebssysteme, insbesondere Linux, verwenden.
Dafür gibt es gute Gründe, z. B.:
 Webanwendungen mit ASP.NET Core laufen performanter (und preiswerter!) unter Linux als unter Windows, weshalb immer mehr Unternehmen nun diese Hostingoption wählen.
 Die meisten Docker-Container basieren auf Linux-Betriebssystemen (laufen aber dennoch unter Windows).
 Microsoft SQL Server in einem Linux-basierten Docker-Container ist deutlich kompakter als in einem Windows-Container. Binnen Minuten kann man den SQL Server als DockerImage herunterladen und binnen zwei Sekunden starten.

Diese Trends betreffen sowohl Entwickler als auch Administratoren.
Die PowerShell 7 auf Linux und macOS ist in ihrer bisherigen Ausbaustufe vor allem ein Angebot für Windows-Entwickler und -Administratoren, die nun auch Linux und/oder
macOS verwenden müssen. Sie finden sich in der neuen Welt wesentlich leichter zurecht, wenn sie ihr Wissen über die Windows PowerShell und ihre Pipelines in der neuen Welt
weiterverwenden können.
Eingefleischte Linux- und macOS-Nutzer wird die PowerShell 7 auf ihren Plattformen aber wohl dann erst als Alternative begeistern können, wenn sie dort mehr Befehle bietet. Aktuell ist der Funktionsumfang der PowerShell 7 unter Linux und macOS deutlich geringer als unter Windows. Insbesondere fehlen dort konkrete Commandlets, um mit den Betriebssystemen und Anwendungen zu interagieren: Derzeit muss man noch selbst die Textausgaben der Standard-Kommandozeilenbefehle in Objekte umwandeln, bevor man von der Macht der PowerShell-OO-Pipeline profitiert. Die PowerShell 7 unter Linux und macOS bietet derzeit vor allem die Grundbefehle für Ein- und Ausgabe sowie die Verarbeitung in der Pipeline.

Die Windows PowerShell basiert auf dem klassischen .NET Framework, das es nur für Windows gibt. Die PowerShell Core 6.x und die PowerShell 7.0 basieren auf .NET Core, das für Windows, Linux und macOS verfügbar ist. Die PowerShell 7.0 verwendet die Version 3.1 von .NET Core, die am 3. 12. 2019 erschienen ist. .NET Core 3.1 muss NICHT vor der Installation der PowerShell 7.0 getrennt installiert werden, denn die PowerShell 7.0 ist eine sogenannte „Self-contained Application“ (SCA), die alle notwendigen Teile der .NET Core 3.1-Laufzeitumgebung mitbringt.

###ACHTUNG: 
In der Windows PowerShell war der Name der Programmdatei powershell.exe. Microsoft hat den Namen gegenüber Windows PowerShell 5.1 bewusst geändert, um den Parallelbetrieb einfacher zu machen. Auf einem Windows mit Windows PowerShell 5.1 und PowerShell 6/7 startet man also per Eingabe von powershell.exe immer die Windows PowerShell und durch
Eingabe von pwsh.exe immer die PowerShell 6 oder 7. Es können zudem mehrere Versionen der PowerShell 6 und 7 auf einem System koexistieren. So eine Versionskoexistenz war mit der Windows PowerShell nicht möglich.

# MSI-basierte Installation unter Windows
Quelle: https://github.com/PowerShell/PowerShell/releases/tag/v7.1.0

Das MSI-basierte Installationsprogramm installiert die PowerShell im Standard im Pfad c:\Program Files\PowerShell\. Dieser Pfad lässt sich bei der Installation ändern. In diesem
Pfad wird ein Unterordner für die Version erstellt, z. B. 7.0.0. In diesem Ordner befinden sich dann alle Dateien der PowerShell inklusive der benötigten Dateien von .NET Core 3.1.
##TIPP: Die MSI-basierte Installation hat den Vorteil, dass es einige Installationoptionen gibt (siehe folgende Abildungen), z. B. den Zielpfad der Installation
automatisch zur Umgebungsvariablen %Path% zu ergänzen, sodass man nun pwsh.exe ohne Voranstellen eines Pfadnamens starten kann. Außerdem entsteht ein Eintrag im Startmenü.

#Installation unter Linux Ubuntu
QUelle: https://github.com/PowerShell/PowerShell/releases/tag/v7.1.0
sudo apt install /home/hs/Downloads/powershell_7.0.0.ubuntu.16.04_amd64.deb
sudo apt-get install -f


erster Aufruf
$PSVersionTable

##Installationsordner
Die Windows PowerShell installiert sich in folgendes Verzeichnis: %systemroot%\system32\WindowsPowerShell\V1.0 (für 32-Bit-Systeme).Auf 64-Bit-Systemen gibt es die PowerShell zweimal, einmal als 64-Bit-Version in %systemroot%\system32\WindowsPowerShell\V1.0 und einmal als 32-Bit-Version. Letztere findet man unter %systemroot%\Syswow64\WindowsPowerShell\V1.0. Die 32-Bit-Version braucht man, wenn man eine Bibliothek nutzen will, für die es keine 64-Bit-Version gibt, z. B. den
Zugriff auf Microsoft-Access-Datenbanken. Es handelt sich auch dabei nicht um einen Tippfehler: Die 64-Bit-Version befindet sich in
einem Verzeichnis, das „32“ im Namen trägt, und die 32-Bit-Version in einem Verzeichnis mit „64“ im Namen! Die 32-Bit-Version und die 64-Bit-Version der PowerShell sieht man im Startmenü: Die 32-Bit-Version hat den Zusatz „(x86)“. Die 64-Bit-Version hat keinen Zusatz. Auch den Editor „ISE“ gibt es in einer 32- und einer 64-Bit-Version.
###ACHTUNG:
Dabei ist das V1.0 im Pfad tatsächlich richtig: Microsoft hat dies seit Version 1.0 nicht verändert. Geplant war wohl eine „Side-by-Side“-Installationsoption wie beim .NET Framework. Doch später hat sich Microsoft dazu entschieden, dass eine neue PowerShell immer die alte überschreibt.



# Skriptausführungsrichtlinie ändern
Bisher war die PowerShell-Skriptausführung auf allen Betriebssystemen im Standard verboten. Erstmals in Windows Server 2012 R2 hat Microsoft sie im Standard erlaubt, sofern das Skript auf der lokalen Festplatte liegt. Entfernte Skripte können nur mit digitaler Signatur gestartet werden. Diese Einstellung nennt sich „RemoteSigned“. In anderen Betriebssystemen gibt es jedoch keine Änderung des Standards, der „Restricted“ lautet.
Um ein PowerShell-Skript auf Betriebssystemen wie Windows 7, Windows 8.x und Windows 10, wo dies im Standard nicht erlaubt ist, überhaupt starten zu können, müssen Sie die
Skript-Ausführungsrichtlinie ändern. Später in diesem Buch lernen Sie, welche Optionen es dafür gibt. Für den ersten Test wird die Sicherheit ein wenig abgeschwächt, aber wirklich nur ein wenig. Mit dem folgenden Befehl lässt man die Ausführung von Skripten zu, die sich auf dem lokalen System befinden, verbietet aber Skripten von Netzwerkressourcen (das Internet eingeschlossen) die Ausführung, wenn diese keine digitale Signatur besitzen.

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Get-ExecutionPolicy

#PowerShell Community Extensions (PSCX) herunterladen und installieren
Bei den „PowerShell Community Extensions“ (kurz PSCX) handelt es sich um ein Open Source-Projekt (ursprünglich auf Codeplex.com, mittlerweile auf Github.com, siehe github.
com/Pscx/Pscx), das zusätzliche Funktionalität mit Commandlets für die Windows PowerShell realisiert, wie zum Beispiel Get-DHCPServer, Get-DomainController, Get-MountPoint,
Get-TerminalSession, Set-VolumneLabel, Write-Tar und viele weitere. Das Projekt steht unter Führung von Microsoft, aber jeder .NET-Softwareentwickler ist eingeladen, daran mitzuwirken. Früher wurden in regelmäßigen Abständen neue Versionen veröffentlicht. Die aktuelle Version zum Reaktionsschluss dieses Buchs ist die Version 3.3.2
vom 17. 1. 2018 (es gibt hier also seit längerem keine neue Version mehr). Diese Version läuft auch unter PowerShell 7.x

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

