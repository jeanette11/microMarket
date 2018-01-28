<!--body wrapper start-->
<div class="wrapper">
    <div class="row">
        <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3">
        </div>
        <div class="col-xs-10 col-sm-8 col-md-6 col-lg-6">
            <h1 class="text-center">BIENVENIDOS AL SISTEMA DE VENTAS </h1>
        </div>
        <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3">
        </div>
    </div>
    <div class="row">
    	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    		<form class="form-horizontal" role="form" id="miform" name="miform">
				<div class="form-group">
					<legend>envio de datos</legend>
				</div>
		
				<input type="text" name="nombre" id="inputNombre" class="form-control">
		
				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
						<button type="button" class="btn btn-primary" id="enviar">siguiente</button>
					</div>
				</div>
    		</form>
    	</div>
    </div>
</div>
<!--body wrapper end-->

<script>
	$(document).ready(function() {
		$('#enviar').click(function(event) {
			$.ajax({
				url: '../../app/models/prueba.php',
				type: 'post',
				data: $('#miform').serialize(),
			})
			.done(function() {
				console.log("success");
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
			
		});
	});
</script>