<script>
    const email = localStorage.getItem("email");
    const senha = localStorage.getItem("senha");
    if (email == null || senhasalvo == null) {
        alert("Você não logou")
        window.location.href = "index.php"
    }
</script>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Area Restrita!</title>
    <link href="./css/bootstrap.css" rel="stylesheet">
</head>

<body>




    <div class="container text-center mt-5">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <p class="lead text-center">Area Restrita, sinta-se livre para... fazer logout.
                </p>
            </div>
        </div>
        <button id="logout" class="btn btn-primary">Fazer logout</button>



    </div>



    <script>
        const botao = document.getElementById("logout");

        botao.addEventListener("click", (e) => {
            e.preventDefault();
            localStorage.clear();

            window.location.href = "index.php";
        });
    </script>

    <script src="./js/bootstrap.bundle.js"></script>

</body>

</html>