$personal = ( @{anrede="Herr";vorname="Hans";password="Meier"},
@{anrede="Herr";vorname="Peter";password="Pan"},
@{anrede="Herr";vorname="Emma";password="Hansen"}
);

function checkCredentials([String] $username, [String] $password, $personal){
     foreach($user in $personal){
      if(($username -eq $user.vorname) -and ($password -ceq $user.password)){
        write-host -Object "login korrekt";
            return $true;
        }
    }
    write-host -Object "login nicht korrekt";
    return $false;
}


    
[int] $count =0;
$loginOK=$false;

Do{
$username= read-Host -Prompt "Username";
$password= read-Host -Prompt "Password";
$loginOK= checkCredentials -username $username -password $password -personal $personal

}
while((++$count -lt 3) -and !$loginOK);

