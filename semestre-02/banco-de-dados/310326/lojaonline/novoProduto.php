<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">

    <title>Novo produto</title>
</head>

<body>
    <div class="container mt-5">
        <h1>Novo produto</h1>

        <form action="addproduto.php" method="POST">
            <div class="mb-3">
                <input type="text" name="txtnome" placeholder="Digite o nome do produto.." class="form-control" required>
            </div>
            <div class="mb-3">
                <textarea name="txtdescricao" type="text" placeholder="Descrição do produto.." class="form-control" required></textarea>
            </div>
            <div class="mb-3">
                <input type="text" name="txtpreco" placeholder="Preço..." class="form-control" required>
            </div>
            <div class="mb-3">
                <input type="text" name="txttipo" placeholder="Tipo..." class="form-control" required>
            </div>
            <div class="mb-3">
                <input type="text" name="txtcategoria" placeholder="Categoria do produto..." class="form-control" required>
            </div>
            <div class="mb-3">
                <input type="text" name="txtdata" placeholder="Data de lançamento..." class="form-control">
            </div>
            <div class="mb-3">
                <input type="text" name="txtdesconto" placeholder="Desconto..." class="form-control">
            </div>
            <input type="submit" value="Salvar" name="btnSalvar" class="btn btn-success">
        </form>

    </div>
</body>

</html>