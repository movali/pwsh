#convertieren xml element,
$users=Import-Csv -Path "io_types/db/users.csv" -delimiter ";" -Encoding Default;

$users[0].username;

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

$loginOK= checkCredentials -username $username -password $password -personal $users
#loginOK= checkCredentials($username,$password,$personal);

if($loginOK){
    write-host -Object "login korrekt";
    break;
    } else{
    write-host -Object "login nicht korrekt";
    }
    

}