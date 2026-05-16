<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Constantest</title>
</head>
<body>
    <?php
    define("NOME", ("Letícia Schütze")); //definindo uma constante ("SEMPREMAIUSCULO", "definição dela que não mudará")

    echo NOME;

    echo "<br><br>";

    echo "O nome da criadora é " . NOME; //O . para juntar textos

    echo "<br><br>";

    echo __DIR__ . "<br><br>" .__FILE__; //constantes mágicas do php
    //DIR - caminho do diretório
    //FILE - caminho do arquivo

    ?>
</body>
</html>