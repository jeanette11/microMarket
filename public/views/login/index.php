<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="Sistema de ventas">
	<meta name="Haki-Ari" content="Desarrollo de software">
	<link rel="shortcut icon" href="<?php echo ROOT; ?>resources/assets/images/logo_icon.png" type="image/png">

    <title><?php echo $titulo; ?></title>

    <link href="<?php echo ROOT; ?>resources/assets/css/style.css" rel="stylesheet">
    <link href="<?php echo ROOT; ?>resources/assets/css/style-responsive.css" rel="stylesheet">
</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" action="index.html">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">Ingresar</h1>
            <img src="<?php echo ROOT; ?>resources/assets/images/login-logo.png" alt=""/>
        </div>
        <div class="login-wrap">
            <input type="text" class="form-control" placeholder="User ID" autofocus>
            <input type="password" class="form-control" placeholder="Password">

            <button class="btn btn-lg btn-login btn-block" type="submit">
                <i class="fa fa-check"></i>
            </button>
        </div>
    </form>
</div>
<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="<?php echo ROOT; ?>resources/assets/js/jquery-1.10.2.min.js"></script>
<script src="<?php echo ROOT; ?>resources/assets/js/bootstrap.min.js"></script>
<script src="<?php echo ROOT; ?>resources/assets/js/modernizr.min.js"></script>
</body>
</html>
