<?php
	require_once ("../../config/db.php");
	require_once ("../../config/conexion.php");
	require_once '../../config/route.php';
	//Variables para enviar a la plantilla
	$titulo="Usuarios";
	$contenido="user/index.php";
	$sub_directory="";
	$menu_a= array();
	if (!($usuarios = $con->query("SELECT * FROM usuario_login"))) {
    	echo "Falló SELECT: (" . $con->errno . ") " . $con->error;
	}

	//var_dump($usuarios->fetch_assoc());
	$pie_class="si";//Variable donde se poneun pie de pagina estatico
	
	require_once ('../../../public/views/plantilla.php');
?>