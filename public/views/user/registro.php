<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Registro de usuario
            </header>
            <div class="panel-body">
                <div class=" form">
                    <form class="cmxform form-horizontal adminex-form" id="frmUsuario" name="frmUsuario" method="post">
                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-2">Nombre completo (obligatorio)</label>
                            <div class="col-lg-8">
                                <input class=" form-control" id="name" name="name" minlength="2" type="text" required />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="user" class="control-label col-lg-2">nombre de usuario (Obligatorio)</label>
                            <div class="col-lg-8">
                                <input class="form-control " id="user" type="text" name="user" required />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="password" class="control-label col-lg-2">Contraseña (obligatorio)</label>
                            <div class="col-lg-8">
                                <input class="form-control " id="password" type="password" name="password" required />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="password_repeat" class="control-label col-lg-2">Repetir contraseña</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="password" id="password_repeat" name="password_repeat" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-primary" type="submit">Registrar</button>
                                <button class="btn btn-default" type="button">Cancelar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
</div>
<script>
    $(document).ready(function() {
        $("#frmUsuario").validate({
            debug:true,
            rules: {
                firstname: "required",
                lastname: "required",
                username: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                },
                topic: {
                    required: "#newsletter:checked",
                    minlength: 2
                },
                agree: "required"
            },
            submitHandler: function (form) {
                $.ajax({
                    url: '../../models/user/registro_model.php',
                    type: 'post',
                    data: $("#frmUsuario").serialize(),
                    beforeSend: function() {
                    },
                    success: function(response) {
                        if(response==1){
                            window.location.href='<?php echo ROOT_CONTROLLER ?>user/index.php';
                        }else{
                            alert("Error al registrar");
                        }
                    }
                });
            }
        });
    });
</script>