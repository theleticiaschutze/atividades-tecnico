<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aspas no php</title>
</head>

<body>
    <?php
    $cidade = 'Jaraguá do Sul';
    echo $cidade . 'é uma cidade de Santa Catarina';

    echo '<br>';

    $cidade = 'São Miguel d\'Oeste'; //essa barra vai antes do ' para indicar que é acento e não fechamento das aspas
    echo $cidade . 'é uma cidade do oeste catarinense'; //tem que estar assim ligado com o "."

    echo '<br>';

    $uf = "São Paulo";
    echo "O estado de $uf, pertence a região sudeste do Brasil."; //com aspas duplas - sai certo
    echo "<br>";
    echo 'O estado de $uf, pertence a região sudeste do Brasil.'; //com aspas simples - sai $uf e não o nome de São Paulo
    echo "<br>";

    //listando os arquivos no windows
    echo `dir /o /n *.php`; //crase é utilizada 
    ?>
</body>

</html>