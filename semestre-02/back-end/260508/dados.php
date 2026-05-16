<?php
//Vetor com nomes
$a[] = "Ana";
$a[] = "Beltrano";
$a[] = "Ciclano";
$a[] = "Daniela";
$a[] = "Eva";
$a[] = "Fulano";
$a[] = "Gabriel";
$a[] = "Hildegard";
$a[] = "Indiana";
$a[] = "Juliane";
$a[] = "Leticia";
$a[] = "Manoel";
$a[] = "Nicolas";
$a[] = "Osvaldo";
$a[] = "Patricia";
$a[] = "Rafael";
$a[] = "Tatiane";
$a[] = "Ugo";
$a[] = "Victoria";
$a[] = "Lizia";
$a[] = "Erica";
$a[] = "Elenice";
$a[] = "Thiago";
$a[] = "Thamires";
$a[] = "washigton";
$a[] = "Vioria";
$a[] = "Simone";
$a[] = "Cintia";
$a[] = "Nunes";
$a[] = "Wsley";
$a[] = "Zema";

//recupera o parâmetro q da URL
$q = $_GET["q"];

$hint = "";

//lookup all hints from array if $q is different from ""
if($q !== "") {
    $q = strtolower($q);
    $len = strlen($q);
    foreach($a as $name) {
        if(stristr($q, substr($name, 0, $len))) {
            $hint = $name;
        } else {
            $hint .= ", $name";
        }
    }
}






?>