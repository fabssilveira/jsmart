<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="assets/lib/materialize/css/google_fonts.css"
	media="screen,projection" />

<link type="text/css" rel="stylesheet"
	href="assets/lib/materialize/css/materialize.min.css"
	media="screen,projection" />

<!-- Import JSmartMarket CSS -->
<link type="text/css" rel="stylesheet" href="assets/css/jsmart.css"
	media="screen,projection" />

<!--Let browser know website is optimized for mobile-->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
	<!-- conteudo do site-->

	<!--          adicionar depois <img class="logo" src="assets/media/img/img.logo.png"></img>         -->

	<nav>
	<div class="nav-wrapper indigo">
		<a href="paginaInicial" class="brand-logo"><img class="image"
			src="assets/media/img/img.logo.png"></a> <a href="#"
			data-activates="mobile-demo" class="button-collapse"><i
			class="material-icons">menu</i></a>
		<ul class="right hide-on-med-and-down">
			<li><a href="paginaInicial">Página Inicial</a></li>
			<li><a href="historia">História</a></li>
			<li><a href="conta">Sua Conta</a></li>
			<li><a
				class="waves-effect waves-light black-text grey btn-large"
				href="logout" id="logout"><i
					class="material-icons right red-text">power_settings_new</i>Logout</a></li>
		</ul>
		<ul class="side-nav" id="mobile-demo">
			<li><a href="paginaInicial">Página Inicial</a></li>
			<li><a href="hitoria">História</a></li>
			<li><a href="conta">Sua Conta</a></li>
			<li><a
				class="waves-effect waves-light black-text grey btn-large"
				href="logout" id="logout"><i
					class="material-icons right red-text">power_settings_new</i>Logout</a></li>
		</ul>
	</div>
	</nav>

	<!-- cards -->

	<div class="row"> </div>
	<div class="row"> </div>
	<div class="row center red-text text-lighten-2">
		<h4>Protótipo do Carrinho inteligente JSmart Market</h4>
	</div>

	<div class="divider"> </div>
	
	<div class="row"> </div>
	<div class="row center indigo-text text-lighten-2">
		<h4>Imagens do Protótipo</h4>
	</div>
	
	<div class="carousel">
		<a class="carousel-item" href="#one!"><img
			src="assets/media/img/img.01.jpg"></a> <a class="carousel-item"
			href="#two!"><img src="assets/media/img/img.02.jpg"></a> <a
			class="carousel-item" href="#three!"><img
			src="assets/media/img/img.03.jpg"> </a> <a class="carousel-item"
			href="#four!"><img src="assets/media/img/img.04.jpg"></a> <a
			class="carousel-item" href="#four!"><img
			src="assets/media/img/img.05.jpg"></a> <a class="carousel-item"
			href="#four!"><img src="assets/media/img/img.06.jpg"></a> <a
			class="carousel-item" href="#four!"><img
			src="assets/media/img/img.07.jpg"></a> <a class="carousel-item"
			href="#four!"><img src="assets/media/img/img.08.jpg"></a> <a
			class="carousel-item" href="#four!"><img
			src="assets/media/img/img.09.jpg"></a>

	</div>

	
	<div class="divider"> </div>
	
	<div class="row"> </div>
	<div class="row center indigo-text text-lighten-2">
		<h4>Video Demonstrativo</h4>
	</div>
	<div class="row ">

		<div class="col s12 M7 ">
			<div class="video-container">
				<iframe width="853" height="800" src="assets/media/video/video.mp4"
					frameborder="0" allowfullscreen></iframe>
			</div>
		</div>

		<div class="col s12 M5 left">
			<div class="card-panel red lighten-2">
				<span class="white-text"><h6>O sistema de anti-fraude do
						JSmart Market, requer a sincronização dos sensores de movimento
						juntamente com a placa Raspberry, que identifica qualquer
						produto que é colocado dentro do carrinho.</h6></span>
			</div>
		</div>

	</div>

	
</body>

<!-- Rodape -->
<footer class="page-footer indigo">
	<div class="footer-copyright">
		<div class="container center">2016 Copyright JSmart Market</div>
	</div>
</footer>

<!--Import JavaScript-->
<script type="text/javascript"
	src="assets/lib/jquery/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="assets/lib/materialize/js/materialize.min.js"></script>

<script type="text/javascript" src="assets/js/jsmart.js"></script>

</html>
