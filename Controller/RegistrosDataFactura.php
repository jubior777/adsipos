<?php
require('../Model/Conexion.php');
require('Constans.php');

if (!isset($_SESSION)) {
    session_start();
}

$usuarioLogin = $_POST['usuarioLogin'];
$passwordLogin = $_POST['passwordLogin'];

$con = new Conexion();

$allUsuarios = $con->getAllUserData();
$menuMain = $con->getMenuMain();

if (isset($_POST['update_data_factura'])) {
    $usuarioLogin = $_POST['usuarioLogin'];
    $passwordLogin = $_POST['passwordLogin'];
    $iddatos = $_POST['iddatos'];
    $propietario = $_POST['propietario'];
    $razonSocial = $_POST['razonSocial'];
    $direccion = $_POST['direccion'];
    $nro = $_POST['nro'];
    $telefono = $_POST['telefono'];
   

    $mensaje = "Se Actualizo  los datos de la factura !!!";
    $alerta = "alert alert-info";

    $updateMensaje = $con->updateMensajeAlert($mensaje, $alerta);
    $updateDatosFactura = $con->updateDataFactura( $iddatos, $propietario, $razonSocial, $direccion, $nro, $telefono);

}

header("Location: DatosFactura.php?usuario=$usuarioLogin&password=$passwordLogin&estado='Activo'");


?>
