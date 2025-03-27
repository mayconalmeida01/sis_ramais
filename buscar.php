<?php

// header('Content-Type: application/json');
// header('Access-Control-Allow-Origin: *');

include 'config.php'; // Inclui a conexão com o banco

$termo = $_GET['termo'] ?? '';  // Pega o termo da URL

// Previne SQL Injection
$termo = $conn->real_escape_string($termo);

// Verifica se o termo está vazio
if (empty($termo)) {
    echo json_encode([]); // Retorna um array vazio caso o termo esteja vazio
    exit;
}

// Consulta para buscar dados no banco
$sql = "SELECT * FROM ramais WHERE setor LIKE '%$termo%' OR colaborador LIKE '%$termo%' OR ramal LIKE '%$termo%'";
$result = $conn->query($sql);

// Verifica se encontrou algum resultado
if ($result->num_rows > 0) {
    $dados = [];
    while ($row = $result->fetch_assoc()) {
        $dados[] = $row;
    }
    echo json_encode($dados);  // Retorna os resultados em JSON
} else {
    echo json_encode([]);  // Retorna um array vazio caso não encontre nada
}
?>
