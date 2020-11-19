#convertieren xml element,
[xml]$personal = get-Content -Path "io_types/db/users.xml" -Encoding UTF8

function checkCredentials([String] $username, [String] $password, $personal){
     foreach($user in $personal){
      if(($username -eq $user.username) -and ($password -ceq $user.password)){
            return $true;
        }
    }

    return $false;
}


    
[int] $count =0;
$loginOK=$false;

while($count++ -lt 3){
$username= read-Host -Prompt "Username";
$password= read-Host -Prompt "Password";

$loginOK= checkCredentials -username $username -password $password -personal $personal.userlist.user
#loginOK= checkCredentials($username,$password,$personal);

if($loginOK){
    write-host -Object "login korrekt";
    break;
    } else{
    write-host -Object "login nicht korrekt";
    }
    

}