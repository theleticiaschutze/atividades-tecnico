<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link href="./css/bootstrap.css" rel="stylesheet">
</head>

<body>

  <div class="container text-center mt-5">
    <div class="row">
      <div class="col-lg-8 mx-auto">
        <p class="lead text-center">Faça o login
        </p>


      </div>
    </div>

    <div class="row">
      <div class="col-lg-8 mx-auto">
        <form>
          <div class="form-group">
            <label for="cadastrarEmail">Endereco de email</label>
            <input type="email" class="form-control" id="email" placeholder="Insira o Email">

          </div>
          <div class="form-group">
            <label for="criarSenha">Senha</label>
            <input type="password" class="form-control" id="senha" placeholder="Senha">
          </div>

          <button type="submit" class="btn btn-primary">Login</button>
      </div>

      </form>

      <script>
        const frm = document.querySelector("form");

        frm.addEventListener("submit", (e) => {
          e.preventDefault();
          const email = document.getElementById("email").value;
          const senha = document.getElementById("senha").value;

          const emailsalvo = localStorage.getItem("email");
          const senhasalvo = localStorage.getItem("senha");

          window.location.href = "login.php";

          if (email == emailsalvo && senha == senhasalvo) { //ve se tem salvo o que foi colocado e manda pro menu
            window.location.href = "menu.php"
          } else {
            window.location.href = "cadastrar.php" //manda pro cadastro para criar
          }
        });
      </script>

      <script src="./js/bootstrap.bundle.js"></script>
</body>

</html>