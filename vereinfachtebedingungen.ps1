[string] $nachname = "meier"
    
    #case sense -ceq und -eq nicht case sense alles mit c ist immer was cas sense
    if( $nachname -ceq "Meier"){
     write-host -Object "`$nachname ist Meier"
    } else {
     write-host -Object "`$nachname ist nicht Meier"
    }

    [string] $nachname = "Meier"
    $nachname | where-object { $_ -ceq "meier" }
    

