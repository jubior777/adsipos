<?php
require('../Model/Conexion.php');
require('Constans.php');

if (!isset($_SESSION)) {
    session_start();
}

$idUsuario = $_GET['idUser'];

$con = new Conexion();

$onlyUserSession = $con->getOnlyUserData($idUsuario);

foreach ($onlyUserSession as $user) {
    $usuario = $user['login'];
    $password = $user['password'];
}

$deleteAllPreventa = $con->deleteAllPreventa();

$urlViews = URL_VIEWS;
$urlController = URL_CONTROLLER;

require('../Views/RefreshPedido.php');
?>
