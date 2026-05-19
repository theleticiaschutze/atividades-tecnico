<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <title>Entrar</title>
</head>
<body>
    <div class="container mt-5">
        <h2>Página de login</h2>
        <form action="index.php">
        <input type="text" class="form-control" placeholder="digite o usuário..." required name="txtuser"/> 
        <input type="password" class="form-control" placeholder="digite a senha..." required name="txtsenha"/>
        <input type="submit" name="btentrar" class="btn btn-primary mt-3" value="Entrar"> 
    </form>
    </div>
</body>
</html>