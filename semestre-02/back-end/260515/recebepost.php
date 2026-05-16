<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trabalhando com POST - Livro PHP Profissional</title>
</head>
<body>
    <?php
    $nome = isset($_POST['nome']) ? $_POST['nome'] : "";
    $cidade = isset($_POST['cidade']) ? $_POST['cidade'] : "";
    $transporte = isset($_POST['transporte']) ? $_POST['transporte'] : "";
    echo "Olá $nome, você mora em $cidade e anda de $transporte.";
    ?>
</body>
</html>