<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trabalhando com POST - Livro PHP Profissional</title>
</head>

<body>
    <form action="recebepost.php" method="POST">
        <p>
            Digite seu Nome: <input type="text" name="nome" size="20" autofocus required>
        </p>
        <p>
            Digite sua cidade: <input type="text" name="cidade" size="20" required>
        </p>
        <p>
            Anda de: <select name="transporte">
                <option value="carro" selected="selected">Carro</option>
                <option value="moto">Moto</option>
                <option value="onibus">Onibus</option>
            </select>
        </p>
        <p>
            <input type="submit" value="enviar">
            <input type="reset" value="limpar">
        </p>
    </form>
</body>

</html>