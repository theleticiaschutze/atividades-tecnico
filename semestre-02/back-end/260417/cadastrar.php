<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cadastre-se</title>
  <link href="./css/bootstrap.css" rel="stylesheet">
</head>

<body>

  <div class="container text-center mt-5">
    <div class="row">
      <div class="col-lg-8 mx-auto">
        <p class="lead text-center">Usuario nao encontrado,
          por favor cadastre-se para obter acesso!!
        </p>


      </div>
    </div>

    <div class="row">
      <div class="col-lg-8 mx-auto">
        <form>
          <div class="form-group">
            <label for="cadastrarEmail">Endereco de email</label>
            <input type="email" class="form-control" id="cadastraremail" placeholder="Insira o Email">

          </div>
          <div class="form-group">
            <label for="criarSenha">Senha</label>
            <input type="password" class="form-control" id="criarsenha" placeholder="Senha">
          </div>
          <div class="form-group">
            <label for="criarSenha">Confirmar senha</label>
            <input type="password" class="form-control" id="confirmasenha" placeholder="Confirme a senha">
          </div>

          <button type="submit" class="btn btn-primary">Cadastrar</button>
      </div>

      </form>

      <script>
        const frm = document.querySelector("form");

        frm.addEventListener("submit", (e) => {
          e.preventDefault();
          const email = document.getElementById("cadastraremail").value;
          const senha = document.getElementById("criarsenha").value;
          const senha2 = document.getElementById("confirmasenha").value;


          if (senha == senha2) {
            localStorage.setItem("email", email);
            localStorage.setItem("senha", senha);
            window.location.href = "login.php";
          } else {
            alert("As senhas não conferem!")
          }
        });
      </script>

      <script src="./js/bootstrap.bundle.js"></script>
</body>

</html>