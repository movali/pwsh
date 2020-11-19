# Wo ist die Datei
$datei="C:\Users\MOCadmin\Desktop\ps\COM\exceltest.xlsx"

# Datei öffnen mit COM
# lässt die Funktionen von VBA nutzen
$objexcel=new-object -ComObject Excel.Application
# Öffnet Excel zur Live-Ansicht
$objexcel.Visible=$true

$excelworkbook=$objexcel.Workbooks.Open($datei)

# die Variable wird neu gesetzt damit die Pfade nicht zu lang werden
$blatt1=$excelworkbook.worksheets.item(1)
$blatt1.cells.item(1,1)="test";

<# macht Excel kaputt :-D
[int]$zaehler=0;
[int]$zelle=1
while( $zaehler -lt 100){
    $blatt1.cells.item($zelle,1)="test";
    $zelle++;
    write-host $zelle
    }
    write-host "nach schleife"
#>   

# Datei speichern
$excelworkbook.save()

# Schließe die Datei
# $objexcel.quit();

# Warte zum angucken der Datei
start-sleep 10

#Schließt zum Ende alle Excel-Instanzen, auch die "unsichtbaren", nur zum testen!
$programme=Get-Process #findet alle programme
foreach ($programm in $programme) #für jedes element tue...
    {
    if ($programm.Name -like "excel") # suche ob es notepad heißt
        {
            $programm.kill() #wenn true, dann --> kill; kill ist eine Methode des Objektes, hier wird der Process geschlossen
            #oder
            #Stop-Process $programm
        }
    }




