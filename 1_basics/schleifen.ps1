

# while-Schleifen: Daten  unbekannter länge

[int] $counter=0;
#Kopfgesteuert
While($counter++ -lt 10){
write-host -Object $counter;
}


#Fuss
$counterDo=0;
do{
   write-host -Object $counterDo;
}
While($counterDo++ -lt 10)



# Fo-Schleifen: Arrays, Aufzählung

for($i=0;$i -lt 10;$i++){
    write-host -Object $i;
}


#[int[]] $meinezahle=@(34,12,45,11,32,9);
[int[]] $meinezahle=34,12,45,11,32,9;

for($i=0;$i -lt $meinezahle.Length;$i++){
    write-host -Object $meinezahle[$i];
}

#Beschleunigte For-Schleifen: foreach
foreach($zanl in $meinezahle){
   write-host -Object $zanl;
}

# % ALIAS
#[int[]] $meinezahle=@(34,12,45,11,32,9);
[int[]] $meinezahle=34,12,45,11,32,9;
% $zanl in $meinezahle{
    write-host -Object $zanl;
 }
