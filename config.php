<?php
//Conexão com o banco

$host = "localhost";
$user = "root";
$pass = "";
$dbname = "empresa";

// Conectar ao banco
$conn = new mysqli($host, $user, $pass, $dbname);

// Verificar erro na conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}
?>
 