
# void ohne param
function zeigeMeldung(){
    write-host -object "Hello world"; 
}
# void mit Parameter
function zeigeMeldungParam($msg){
    write-host -object "$msg"; 
}

# void mit Parameter und Typsicherheit
function zeigeMeldungParamTyp([String] $msg, [System.ConsoleColor] $fgc){
    write-host -object ("$msg") -ForegroundColor $fgc; 
}


# ()= weglassen
# void Funkionen sind im Prinzip cmdlet
zeigeMeldung;

zeigeMeldungParam -msg "Guten Tag"

zeigeMeldungParamTyp -msg "Guten Abend" -fgc yellow

#----------------------------------------------------
#Funktionen mit Rückgabewert (Return)
function AddTwoNumber([double] $value1,[double] $value2){

    write-host -Object ($value1+$value2);
    
    return ($value1+$value2);
    
    }
    
    
    function AddTwoNumberReturn([double] $value1,[double] $value2){
    
    return ($value1+$value2);
    }
    
    
    
    AddTwoNumber -value1 2.5 -value2 6.5;
    
    
    $erg=AddTwoNumberReturn -value1 2.5 -value2 7.5;
    
    write-host -Object ($erg);