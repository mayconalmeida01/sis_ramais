<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Icon -->
    <link rel="icon" type="image/png" href="img/icon/itp.ico">
    <!-- CSS -->
     <link rel="stylesheet" href="css/style.css">
    <title>Buscador de Ramais</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="body container mt-5">
    <h2>Buscador de Ramais</h2>
    <input type="text" id="busca" class="form-control" placeholder="Digite setor, nome ou ramal">
    <table class="table mt-3">
        <thead>
            <tr>
                <th>Colaborador</th>
                <th>Setor</th>
                <th>Ramal</th>
            </tr>
        </thead>
        <tbody id="resultado"></tbody>
    </table>

    <script src="js/funcaobuscar.js"></script>

</body>
</html>
