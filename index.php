<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Icon -->
    <link rel="icon" type="image/png" href="img/icon/itp.ico">
    <!-- CSS -->
     <link rel="stylesheet" href="css/index.css">
     <!-- bootstrap 5 -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>Buscador de Ramal</title> 
</head>
<body class="body mt-5">
    <div class="container">
    <div class="main-container">
    <h2 class="">Buscador de Ramal</h2>
    <input type="text" id="busca" class="form-control" placeholder="Digite setor, nome ou ramal">
    <table class="table mt-3">
        <thead>
            <tr>
                <th>Colaborador:</th>
                <th>Setor:</th>
                <th>Ramal:</th>
            </tr>
        </thead>
        <tbody id="resultado"></tbody>
    </table>
    </div>
    </div>

    <script src="js/funcaobuscar.js"></script>

</body>
</html>
