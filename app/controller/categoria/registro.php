<?php
	require_once '../../config/route.php';
	session_start();
	if (!isset($_SESSION['user_login_status']) AND $_SESSION['user_login_status'] != 1) {
        header("location: ".ROOT_CONTROLLER.'login/');
		exit;
	}
	//Variables para enviar a la plantilla
	$titulo="Nueva categoria";
	$contenido="categoria/registro.php";
	$sub_directory="";
	$menu_a= array();
	$pie_class="si";	
	require_once ('../../../public/views/plantilla.php');
?>