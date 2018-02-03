<div class="row">
    <div class="col-md-4">
        <div class="row">
            <div class="col-md-12">
                <div class="panel">
                    <div class="panel-body">
                        <div class="profile-pic text-center">
                            <img alt="" src="<?php echo ROOT ?>resources/assets/images/photos/user1.png">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="panel">
                    <div class="panel-body">
                        <ul class="p-info">
                            <li>
                                <div class="title">Nombre</div>
                                <div class="desk"><?php echo $_SESSION['nombre']; ?></div>
                            </li>
                            <li>
                                <div class="title">Usuario</div>
                                <div class="desk"><?php echo $_SESSION['user_name']; ?></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="row">
            <div class="col-md-12">
                <div class="panel">
                    <div class="panel-body">
                        <div class="profile-desk">
                            <h1> Configuracion general de la cuenta</h1>
                            <span class="designation">instruciones</span>
                            <p>
                                Usted solo puede configurar el nombre de usuario y su contraseña
                            </p>
                            <a class="btn btn-default" href="#" role="button">modificar contraseña</a>
                            <a class="btn btn-default" href="#" role="button">modificar nombre de usuario</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>