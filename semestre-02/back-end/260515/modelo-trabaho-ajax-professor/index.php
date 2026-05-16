<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agenda CRUD - PHP & AJAX</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link href="./css/estilo.css" rel="stylesheet">
</head>

<body>

    <div class="container py-5">
        <h2 class="text-center mb-4">Agenda de Contatos</h2>

        <div class="card shadow-sm mb-4">
            <div class="card-body">
                <form id="agendaForm" class="row g-3">
                    <input type="hidden" id="contatoId" name="id">
                    <div class="col-md-4">
                        <label class="form-label">Nome</label>
                        <input type="text" class="form-control" id="nome" name="nome" required>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Telefone</label>
                        <input type="text" class="form-control" id="tel" name="tel" required>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="col-12 text-end">
                        <button type="button" id="btnNovo" class="btn btn-secondary btn-sm">Limpar</button>
                        <button type="submit" class="btn btn-primary btn-sm px-4">Salvar</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="table-container shadow-sm">
            <table class="table table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Cód</th>
                        <th>Nome</th>
                        <th>Telefone</th>
                        <th>E-mail</th>
                        <th class="text-center">Ações</th>
                    </tr>
                </thead>
                <tbody id="tabelaContatos">
                </tbody>
            </table>
        </div>
    </div>

    <script src="./js/script.js"></script>
</body>

</html>