<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trabalhando com arquivos - Livro PHP Profissional</title>
</head>

<body>
    <form enctype="multipart/form-data" action="recebeupload.php" method="POST">
        <input type="hidden" name="tamanho_arquivo" value="30000">
        <p>
            Digite uma informação do arquivo: <input type="text" name="info" size="20">
        </p>
        <p>
            Arquivo: <input type="file" name="arquivo">
        </p>
        <p>
            <input type="submit" value="enviar">
            <input type="reset" value="limpar">
        </p>
    </form>
</body>

</html>