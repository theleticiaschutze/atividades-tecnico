<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trabalhando com GET - Livro PHP Profissional</title>
</head>
<body>
    <?php
    $nome = $_GET['nome'];
    $cidade = $_GET['cidade'];
    echo "Olá $nome, você mora em $cidade.";
    ?>
</body>
</html>