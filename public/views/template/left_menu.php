<div class="left-side sticky-left-side">
    <!--logo and iconic logo start-->
    <div class="logo">
        <a href="index.html"><img src="<?php echo ROOT; ?>resources/assets/images/logo.png" alt=""></a>
    </div>

    <div class="logo-icon text-center">
        <a href="index.html"><img src="<?php echo ROOT; ?>resources/assets/images/logo_icon.png" alt=""></a>
    </div>
    <!--logo and iconic logo end-->

    <div class="left-side-inner">

        <!-- visible to small devices only -->
        <div class="visible-xs hidden-sm hidden-md hidden-lg">
            <div class="media logged-user">
                <img alt="" src="<?php echo ROOT; ?>resources/assets/images/photos/user-avatar.png" class="media-object">
                <div class="media-body">
                    <h4><a href="#"><?php  ?>Nombre de usuario</a></h4>
                    <span>"Hola bienvenido"</span>
                </div>
            </div>
            <h5 class="left-nav-title">Información de cuenta</h5>
            <ul class="nav nav-pills nav-stacked custom-nav">
              <li><a href="#"><i class="fa fa-user"></i> <span>Perfil</span></a></li>
              <li><a href="#"><i class="fa fa-cog"></i> <span>Configuraciones</span></a></li>
              <li><a href="#"><i class="fa fa-sign-out"></i> <span>Salir</span></a></li>
            </ul>
        </div>

        <!--sidebar nav start-->
        <ul class="nav nav-pills nav-stacked custom-nav">
            <li class="active"><a href="index.html"><i class="fa fa-home"></i> <span>Inicio</span></a></li>
            <li class="menu-list"><a href=""><i class="fa fa-users"></i> <span>Usuarios</span></a>
                <ul class="sub-menu-list">
                    <li><a href="<?php echo ROOT_CONTROLLER; ?>user/"> Lista de usuarios</a></li>
                    <li><a href="<?php echo ROOT_CONTROLLER; ?>user/registro.php"> Registro de usuarios</a></li>
                </ul>
            </li>
            <li class=""><a href=""><i class="fa fa-shopping-cart"></i> <span>Ventas</span></a>
            </li>

            <li class="menu-list"><a href=""><i class="fa fa-copy"></i> <span>Reportes</span></a>
                <ul class="sub-menu-list">
                    <li><a href="#"> Reporte 1</a></li>
                    <li><a href="#"> Reporte 2</a></li>
                    <li><a href="#"> Reporte 3</a></li>
                </ul>
            </li>
            <li class="menu-list"><a href="#"><i class="fa fa-tags"></i> <span>Clientes</span></a>
                <ul class="sub-menu-list">
                    <li><a href="google_map.html"> Lista de clientes</a></li>
                    <li><a href="vector_map.html"> Registro de clientes</a></li>
                </ul>
            </li>
            <li><a href="<?php echo ROOT_CONTROLLER; ?>login/index.php?logout"><i class="fa fa-sign-in"></i> <span>Salir</span></a></li>
        </ul>
        <!--sidebar nav end-->
    </div>
</div>