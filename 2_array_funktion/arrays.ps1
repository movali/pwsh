# Array
Listen 

$vornamen=@("Hans","Peter","Emma");
$vornamen=@("Meier","Pan","Hansen");


# Besser Tupel --2 dim
$user=@(("Hans","Meier"),("Peter","Pan"),("Emma","Hansen"));

write-host -Object ($user[1][1]);


# drei dim
$user1=@(("Hans","Meier","Hamburg",("Ute","Bert")),("Peter","Pan"),("Emma","Hansen"));
write-host -Object ($user1[0][3][1]);

# Assoziative Arrays

$mitarbeiter=@{anrede="Herr";Voranem="Hans";Nachname="Meier"};

write-host -Object ($mitarbeiter.anrede);

#Hashtable Array
# Alternative Custom Object Klasse oder C# -- Jedoch aufwendug lohnt sich erst bei einer Anwendung

$personal = ( @{anrede="Herr";Vorname="Hans";Nachname="Meier"},
              @{anrede="Herr";Vorname="Peter";Nachname="Pan"},
              @{anrede="Herr";Vorname="Emma";Nachname="Hansen"}
            );

write-host -Object ($personal[1].Vorname);

# Alle ausgeben

foreach($user in $personal){
  write-host -Object ($user.Vorname);
}