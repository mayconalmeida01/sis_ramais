<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <!-- Icon -->
    <link rel="icon" type="image/png" href="img/icon/itp.ico">
    <!-- CSS -->
     <link rel="stylesheet" href="css/style.css">
    <title>Inserir Ramal</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">
    <h2>Adicionar Novo Ramal</h2>
    <form method="post" action="">
        <div class="mb-3">
            <label class="form-label">Setor:</label>
            <input type="text" name="setor" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Colaborador:</label>
            <input type="text" name="colaborador" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Ramal:</label>
            <input type="text" name="ramal" class="form-control" required>
        </div>
        <button type="submit" name="enviar" class="btn btn-primary">Salvar</button>
    </form>

    <?php
    if (isset($_POST['enviar'])) {
        include 'config.php';
        $setor = $_POST['setor'];
        $colaborador = $_POST['colaborador'];
        $ramal = $_POST['ramal'] ?? NULL;

        $sql = "INSERT INTO ramais (setor, colaborador, ramal) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sss", $setor, $colaborador, $ramal);
        
        if ($stmt->execute()) {
            echo "<div class='alert alert-success mt-3'>Ramal cadastrado com sucesso!</div>";
        } else {
            echo "<div class='alert alert-danger mt-3'>Erro ao cadastrar.</div>";
        }
    }
    ?>
</body>
</html>
