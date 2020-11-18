$username= read-Host -Prompt "Username";
$password= read-Host -Prompt "Password";

if((($username -eq "Hans") -and ($password -ceq "Meier")) -or (($username -eq "Peter") -and ($password -ceq "Pan"))){
    
    write-host -Object "login korrekt";
}
else {
     write-host -Object "login nicht korrekt";
}