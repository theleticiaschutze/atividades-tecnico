<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trabalhando com Arquivos - Livro PHP Profissional</title>
</head>
<body>
    <?php
    echo "<pre>";
    if(is_uploaded_file($_FILES['arquivo']['tmp_name'])){
        $info_arquivo = isset($_POST['info'])? $_POST['info'] : "não há";
        $nome_arquivo = $_FILES['arquivo']['name'];
        $tamanho_arquivo = $_FILES['arquivo']['size'];

        echo "Informação  auxiliar do arquivo info <b>" . $info_arquivo . "</b> <br>";
        echo "Informação <b>" . $nome_arquivo . "</b> <br>";
        echo "Informação <b>" . $tamanho_arquivo. "</b> <br>";
    } else {
        echo "Upload Inválido! Segue informações sobre o mesmo: <br>";
        print_r($_FILES);
    }
    echo "</pre>";
    ?>
</body>
</html>