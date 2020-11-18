	# Initialisiern
    [int] $wert1= 2; [int] $wert2= 4;

    # immer untereinander / c# und kompatible, minifizierer
    [int] $wert3= 14;
    [int] $wert4= 4;
    
    # gleich
    if($wert1 -eq 2){
     write-host -object "`$wert ist 2";
    } else {
     write-host -object "`$wert ist nicht 2";
    
    }
    
    
    # größer 10, vorsicht > = -gt ||| < ist umlenken bitte keine Pfeile und gleich zeichen, snur stress damit
    # -gt -ge -lt -le -eq 
    #negation
    #-ngt -nge -nlt -nle -neq 
    
    if($wert3 -gt 10){
     write-host -object "`$wert ist größer 10";
    } else {
     write-host -object "`$wert ist nicht größer 10";    
    }
    
    
    # String testen Meier oder nicht
    
    [string] $nachname = "meier"
    
    #case sense -ceq und -eq nicht case sense alles mit c ist immer was cas sense
    if( $nachname -ceq "Meier"){
     write-host -Object "`$nachname ist Meier"
    } else {
     write-host -Object "`$nachname ist nicht Meier"
    }
    
    
    # String testen Meier oder nicht
    
    [string] $nachname = "Meier"
    
    #erstes Buchstaben
    if( $nachname[0] -eq "M"){
     write-host -Object "`$nachname ist Meier"
    } else {
     write-host -Object "`$nachname ist nicht Meier"
    }

    [string] $nachname = "Meier"

    #erstes Buchstaben mit sql like
    if( $nachname -like "M*"){
     write-host -Object "`$nachname ist Meier"
    } else {
     write-host -Object "`$nachname ist nicht Meier"
    }
    
    
    
    [string] $nachname = "Meier"
    
    #erstes Buchstaben mit sql like
    if( $nachname -clike "M??er"){
     write-host -Object "`$nachname ist Meier"
    } else {
     write-host -Object "`$nachname ist nicht Meier"
    }
    
    
    
    #regex
    [string] $plz="03635"
    
    #erstes Buchstaben mit sql like
    if( $plz -match "^\d{5}$"){
     write-host -Object "`$nachname ist plz"
    } else {
     write-host -Object "`$nachname ist nicht plz"
    }

# Vereinfachte Schreibweise von Bedingungen seit PowerShell 3.0
Get-Service | where-object { $_.status -eq “running” }
Get-Service | where-object status -eq “running”.
Get-Service | where-object -eq status “running” 
Get-Service | where-object status “running” -eq 

# Vereinfachte Schreibweise von Bedingungen seit PowerShell 4.0/
 Get-Service a* | where status -eq “stopped”
 Get-Service a* | Where-Object { $_.status -eq “stopped” }
 (Get-Service a*).Where({ $_.status -eq “stopped”})

 # Mehrere Bedingungen verketten
 (Get-Service).Where({ ($_.name.startswith(“a”) -or $_.name.startswith(“A”)) -and $_.
    status -eq “stopped”})


## Where Parameter: Default, First, Last, SkipUntil, Until, Split
# Alle, bis Bedingung erfüllt
(1..10).Where({ $_ -eq 5},'Until')
# Nur das erste Objekt, das Bedingung erfüllt, also 6
(1..10).Where({ $_ -gt 5},'First')
# Nur das letzte Objekt, das Bedingung erfüllt, also 10
(1..10).Where({ $_ -gt 5},'Last')

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

# Listen elementarer Datentypen sortieren.
21, 32, 16, 34, 9, 10 | Sort-Objec

Möchte man diese Zahlen nicht numerisch, sondern a, dann gibt man
als Parameter einen Ausdruck an, der eine 
# Alphabetisch sortieren ->Typkonvertierung mit einem Typbezeichner
21, 32, 16, 34, 9, 10 | Sort-Object { [string]$_ } 

#Duplikate entfernen
1,5,7,8,5,7 | Select-Object -Unique

#ACHTUNG: Bei Get-Unique muss die Liste vorher sortiert sein!
1,5,7,8,5,7 | Sort-Object | Get-Unique