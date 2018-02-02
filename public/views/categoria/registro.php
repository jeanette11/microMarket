<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Nueva categoria
            </header>
            <div class="panel-body">
                <div class=" form">
                    <form class="cmxform form-horizontal adminex-form" id="frmCategoria" name="frmCategoria" method="post">
                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-2">Nombre de categoria (obligatorio)</label>
                            <div class="col-lg-8">
                                <input class=" form-control" id="nombre" name="nombre" minlength="4" type="text" required />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="user" class="control-label col-lg-2">Limite (Obligatorio)</label>
                            <div class="col-lg-8">
                                <input class="form-control " id="limite" type="text" name="limite" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-primary" type="submit">Registrar</button>
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
        $("#frmCategoria").validate({
            debug:true,
            submitHandler: function (form) {
                $.ajax({
                    url: '../../models/categoria/registro_model.php',
                    type: 'post',
                    data: $("#frmCategoria").serialize(),
                    beforeSend: function() {
                    },
                    success: function(response) {
                        if(response==1){
                            window.location.href='<?php echo ROOT_CONTROLLER ?>categoria/index.php';
                        }else{
                            alert("Error al registrar");
                        }
                    }
                });
            }
        });
    });
</script>