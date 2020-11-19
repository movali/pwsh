# Zugriff auf eine Datenbank mit Powershell

# Hierfür muss die x86 ISE gestartet werden, da Office in 32-Bit vorliegt

# Definiere Verbindung
[string]$connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\MOCadmin\Desktop\ps\Datenbank\userdb.accdb;";

# Verbindung aufbauen
# Connection-Object
# System.Data... ist ein System-Datentyp
# New-Object instanziert diesen Datentyp
# $conn ist ein Objekt
[System.Data.OleDb.OleDbConnection]$conn = New-Object -TypeName System.Data.OleDb.OleDbConnection;

# Weist dem Objekt eine Methode zu
$conn.ConnectionString=$connstr;

# Verbindung erstellen

# Fehlerbehandlung mit try
try {
$conn.Open();
Write-Host -Object "Verbindung hergestellt" -ForegroundColor Green

# erstelle Objekt Commander wie bei $conn
[System.Data.OleDb.OleDbCommand]$cmd = New-Object System.Data.OleDb.OleDbCommand

# $conn ist eine Eigenschaft von cmd.connection, damit er weiß mit welcher DB er verbunden ist
$cmd.Connection=$conn

# was soll abgefragt werden
    try{

        $cmd.CommandText="INSERT INTO tbluser (Username, [Password], Ort) VALUES ('Klaus','Kennwort','ort4')"

        $cmd.ExecuteNonQuery() | out-null;
        Write-Host -Object "Ausführung erfolgreich" -ForegroundColor Green
        }catch{
               Write-Host -Object "Fehler bei ausführen!" -ForegroundColor Red
               # Fehler in $_ werden nicht an andere catch-Blöcke übergeben, deswegen Output sinnvollerweise als Funktion
               # um also das selbe wie im unteren catch-Block zu machen ist es notwendig das hier hin zu kopieren oder eine Funktion aufzurufen die es tut
               }

} catch{ #klammer von "try"; wird ausgeführt wenn im "try2 Block ein Fehler auftritt
    Write-Host -object "Es ist ein Fehler aufgetreten!" -ForegroundColor Red
    write-host "Fehler: $_" # gibt den Fehler zurück(Message des Objectes)

    # Umleitung des Fehlers in eine Datei
    [System.DateTime]$now=[System.DateTime]::Now
    [string]$errorMsg=$now.ToString() + ";" + $_ + ";" + $env:USERNAME #.tostring sorgt dafür das der Wert in einen String umgewandelt wird, sonst versucht Powershell damit zu rechnen
    $errormsg >> "C:\Users\MOCadmin\Desktop\ps\Datenbank\error.log"
    }finally{ #wird immer ausgeführt
        if( $conn.State -eq [System.Data.ConnectionState]::Open){
            # Verbindung schließen
            $conn.Close();
            Write-Host -Object "Verbindung geschlossen" -ForegroundColor Green
            }
        }






