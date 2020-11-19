#Encoding ansi default
$users=Import-Csv -Path "io_types/db/users.csv" -delimiter ";" -Encoding Default;

$users[0].username;

# Headless --> Customize Head
$userNoHeadline=Import-Csv -Path "io_types/db/userNoHeadline.csv" -delimiter ";" -Encoding Default -Header "UsernameCus" ,"PasswordCus", "OrtCus"

$userNoHeadline[1].OrtCus