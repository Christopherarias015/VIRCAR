<!DOCTYPE html>
<html lang="en">
<head>
<title>CIA. VIRCAR S.A.</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Taxi Drive Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script src="https://kit.fontawesome.com/b1dad47d59.js" crossorigin="anonymous"></script>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	
	<!-- css files -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Rosario:400,400i,700,700i" rel="stylesheet">
	<!-- //google fonts -->
	
</head>
<body>
<!-- //header -->
<header>
	<div class="container">
		<!-- nav -->
		<nav class="py-sm-4 py-3 d-lg-flex">
			<div id="logo">
				<h1> <a href="index.html"><i class="fas fa-truck-pickup"></i>CIA. VIRCAR S.A.</a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu mt-md-2 ml-auto">
				<li class="mr-lg-4 mr-2 active"><a href="index.html">Home</a></li>
				<li class="mr-lg-4 mr-2"><a href="Login.html">Login</a></li>
			</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>
<!-- //header -->
		
<!-- banner -->
<section class="banner w3pvt-banner" id="home">
	<div class="container">
		<div class="banner-text">
			<div class="slider-info">
				<div class="w3pvt-logo">
					
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //banner -->

<!-- about -->
<section class="about py-sm-5 py-4" id="about">
	<div class="container py-lg-5">
		<div class="row about-grids">
			<div class="col-lg-4 col-md-6 mt-lg-0 mt-4">
				<div class="padding">
					<form action="php/Recuperar.php" method="post">
						<h5 class="mb-3">Reserva un vehiculo</h5>
						<div class="form-style-agile">
							
							<input placeholder="Destino" type="text" required name="destino">
							<select name="carrito">
								<form>
									<option value="0">Seleccione el tipo de vehiculo</option>
									<?php
									require("php/conex.php");
										echo "<opcion name='tipo'>";
									$sql = "select * from vehiculo";
									$r = mysqli_query($l,$sql);
									$n = mysqli_num_rows($r);
									while($registro = mysqli_fetch_array($r)){
										echo "<option value='$registro[Placa]'> $registro[tipo] :cilindraje $registro[cilindraje]</option>";
									}
									echo "</opcion>";
									?>
								</form>
							</select>
							<input placeholder="Lugar de inicio" type="text" required name="referencia">
							<!--<input placeholder="Password" name="password" type="password" required=""> -->
							<button class="book-btn btn">Enviar</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mt-lg-0 mt-4">
				
			</div>
				<div class="col-lg-4 col-md-6 mt-lg-0 mt-4">
				<div class="padding">
					<form action="php/Recuperar.php" method="post">
						<h5 class="mb-3">Datos de usuario</h5>
						<div class="form-style-agile">
							<?php
  								session_start();
  								require "php/conex.php";
  								if(isset($_SESSION['cod_cli'])){
    								$user= $_SESSION['cod_cli'];
    								$sql="select * from cliente where correo_cli = '$user'";
    								$r=mysqli_query($l,$sql);
    								while($registro = mysqli_fetch_object($r)){
										$cedula = $registro -> cod_cli;
										$nombre = $registro -> nom_cli;
										$apellido = $registro -> ape_cli;
										print("<input placeholder='$cedula' value='$cedula' type='text' required name='Cedula' readonly>");
										print("<input placeholder='$nombre' type='text' required name='Nombre' readonly>");
										print("<input placeholder='$apellido' type='text' required name='Apellido' readonly>");
									}
  								}
							?>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //about -->


<!-- call us -->
<section class="customer-call">
	<div class="container">
		<div class="row">
			<div class="col-md-8 py-sm-5 py-4 mt-3">
				<h4 class="mt-2">24 Horas 7 Días a la semana</h4>
				<p>Llamanos</p>
				<h2><span class="fa mr-1 fa-phone"></span> +593 99 912 3483</h2>
				<p class="mt-4">Soporte, ayuda, dudas, recomendaciones y quejas comunicarse a número del presidente de la cooperatica</p>
			</div>		
			<div class="col-lg-3 offset-lg-1 col-md-4 col-sm-6 col-8 pt-md-5 mt-lg-3">
				<img src="images/agent-18762.png" alt="">
			</div>		
		</div>		
	</div>		
</section>
<!-- //call us -->



</body>
</html>