Set-StrictMode -Version 3.0

#convertieren xml element,
[xml]$personal = get-Content -Path "io_types/db/users.xml" -Encoding UTF8

$personal.GetType();

#$personal.userlist.user[0].ort="Glückstadt";
$personal.userlist.user[0].ort="Berlin";


$personal.save("io_types/db/usersEDIT.xml");



#-----------------

$newuser= $personal.userlist.user[0].clone();

$newuser.id=[System.convert]::ToInt64($personal.userlist.LastChild.id) + 1;
$newuser.username="Otto";
$newuser.password="von Bismarck";
$newuser.ort="Hamburg";

#Ich will die AUsgabe dazu nicht sehen
$personal.userlist.AppendChild($newuser)| OUT-NULL;
$personal.userlist

$personal.save("io_types/db/usersEDIT.xml");
