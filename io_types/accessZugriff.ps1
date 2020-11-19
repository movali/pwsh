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
$cmd.Connection=$conn # 2 ist der Fehler!

# was soll abgefragt werden
$cmd.CommandText="SELECT * FROM [tblUser] " #WHERE ID = 1" gibt nur den zweiten Namen aus; die Tabelle wird in eckige Klammern gesetzt wenn entweder der Name reserviert ist, oder Leerzeichen enthält

# Ausführung
# $dr ist der Rückgabewert
# Rückgabe ist eine Zeile
# für mehrere Zahlen mit Schleifen auslesen
[System.Data.OleDb.OleDbDataReader]$dr = $cmd.ExecuteReader()

# Auslesen
while($dr.Read()){ # solange $dr true zurückliefert(solange es nach einem Datensatz noch einen weiteren gibt) tue...
    $dr["Username"] # gibt alle Usernamen zurück
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






