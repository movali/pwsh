
$personal = ( @{anrede="Herr";vorname="Hans";password="Meier"},
@{anrede="Herr";vorname="Peter";password="Pan"},
@{anrede="Herr";vorname="Emma";password="Hansen"}
);

$username= read-Host -Prompt "Username";
$password= read-Host -Prompt "Password";



foreach($user in $personal){

if(($username -eq $user.vorname) -and ($password -ceq $user.password)){

write-host -Object "login korrekt";
break;
}
else {
write-host -Object "login nicht korrekt";
}

}




[int] $count =0

while($count++ -lt 3){
$username= read-Host -Prompt "Username";
$password= read-Host -Prompt "Password";

foreach($user in $personal){

if(($username -eq $user.vorname) -and ($password -ceq $user.password)){

write-host -Object "login korrekt";
break;
}
else {
write-host -Object "login nicht korrekt";
}

}
}


#-----------------------------------------
$personal = ( @{anrede="Herr";vorname="Hans";password="Meier"},
@{anrede="Herr";vorname="Peter";password="Pan"},
@{anrede="Herr";vorname="Emma";password="Hansen"}
);


[int] $count =0
[bool] $loginOK=$false

while($count++ -lt 3){
$username= read-Host -Prompt "Username";
$password= read-Host -Prompt "Password";

foreach($user in $personal){

if(($username -eq $user.vorname) -and ($password -ceq $user.password)){

write-host -Object "login korrekt";
$loginOK=$true;
break;


}
}
write-host -Object "$count. Versuch, try again";
}

if($loginOK){
write-host -Object "login korrekt";
} else{
write-host -Object "login nicht korrekt";
}




